-- SQL Practice Project: Book Orders Database
-- Reference: Practice questions inspired by Satish Dhawale (YouTube)
-- Description: This script creates tables (Books, Customers, Orders) and demonstrates queries like filtering, aggregation, joins, and ordering.

create database book_orders;
use book_orders;

create table books (Book_ID serial primary key, Title varchar(100), Author varchar(50), Genre varchar(20), Published_Year int, Price numeric(10,2), Stock int);
select * from books;

create table customers (Customer_ID serial primary key, Name varchar(100), Email varchar(50), Phone varchar(20), City varchar(50), Country varchar(50));
select * from customers;

create table orders (Order_ID serial primary key, Book_ID int references books(Book_ID), Customer_ID int references customers(Customer_ID), Order_Date date, Quantity int, Total_Amount Numeric(10,2) );
select * from orders;

-- retrieve books of fiction genre
select * from books where Genre='Fiction';

-- books published after 1950
select * from books where Published_Year>1950;

-- List all customers form Canada
select * from customers where Country='Canada';

-- Orders placed in november 2023
select * from orders where Order_Date between '2023-11-01' and '2023-11-30';

-- total stocks of books available 
select sum(Stock) as Total_Stock from books;

-- details of most expensive book
select * from books order by Price desc limit 1;

-- customers who ordered books more than 1
select * from orders where Quantity>1;

-- retrieve order which exceeds amount 20;
select * from orders where  Total_Amount>20;

-- list all genres from books table
select distinct Genre from books;

-- Book with loewst stock
select * from books order by Stock limit 1;

-- total revenue generated from all orders
select sum(Total_Amount) as Total_revenue_Generated from orders;

-- total number of sold books for each genre
select Sum(Quantity), Genre from orders as o join books as b on o.Order_ID=b.Book_ID group by Genre;

-- avg price of book in fantasy genre
select Genre, avg(Price) as Avg_Price from books where Genre='Fantasy';

-- List customers who has placed atleat 2 orders
select Customer_ID, count(Order_ID) from orders group by Customer_ID having Count(Order_ID)>=2 order by Count(Order_ID) asc;

-- Most frequently ordered book
select Book_ID, Count(Order_ID) from orders group by Book_ID order by count(Order_ID) desc limit 1;

-- top 3 most expensive fantasy genre 
select Book_ID, Title, Price from books where Genre='Fantasy' order by Price desc limit 3;

-- total quantity of books sold by each author
select distinct Author, Sum(Quantity) from orders as o join books as b on o.Order_ID=b.Book_ID group by Author order by Author;

-- list city where customer spent more 30 amount 
select distinct City, (Total_Amount) from orders as o join customers as c on o.Order_ID=c.Customer_ID where Total_Amount>30;  

-- customers who spent most on orders
select Customer_ID, sum(Total_Amount) from orders group by Customer_ID order by sum(Total_Amount) Desc limit 1;
