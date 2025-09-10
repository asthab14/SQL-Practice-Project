# SQL Practice Project - Book Orders Database
This repository contains SQL scripts and queries practiced on a **Book Orders Database**.  
It demonstrates database creation, table relationships, and queries to retrieve useful insights using filtering, joins, aggregations, and ordering.  
Practice questions and learning material were inspired by Satish Dhawale (YouTube).

---

## 📂 Project Structure
- **SQL.sql** → Main SQL script with database creation and queries  
- **books.csv** (optional) → Sample data for books  
- **customers.csv** (optional) → Sample data for customers  
- **orders.csv** (optional) → Sample data for orders  

---

## 🗄️ Database Schema

### Books Table
| Column         | Type         | Description              |
|----------------|--------------|------------------------- |
| Book_ID        | INT (PK)     | Unique ID for each book  |
| Title          | VARCHAR(100) | Book title               |
| Author         | VARCHAR(50)  | Book author              |
| Genre          | VARCHAR(20)  | Book genre               |
| Published_Year | INT          | Year published           |
| Price          | NUMERIC(10,2)| Book price               | 
| Stock          | INT          | Available stock          |

### Customers Table
| Column       | Type         | Description                  |
|--------------|--------------|--------------------------    |
| Customer_ID  | INT (PK)     | Unique ID for each customer  |
| Name         | VARCHAR(100) | Customer name                |
| Email        | VARCHAR(50)  | Email address                |
| Phone        | VARCHAR(20)  | Phone number                 |
| City         | VARCHAR(50)  | City                         |
| Country      | VARCHAR(50)  | Country                      |

### Orders Table
| Column       | Type         | Description               |
|--------------|--------------|-------------------------- |
| Order_ID     | INT (PK)     | Unique order ID           |
| Book_ID      | INT (FK)     | Refers to Books table     |
| Customer_ID  | INT (FK)     | Refers to Customers table |
| Order_Date   | DATE         | Date of order             |
| Quantity     | INT          | Number of books ordered   |
| Total_Amount | NUMERIC(10,2)| Total price of the order  |

---

## 📝 Example Queries
- Retrieve all **Fiction** books  
- Find books published after **1950**  
- Get orders placed in **November 2023**  
- Show the **most expensive book**  
- Calculate **total revenue** from all orders  
- Find customers who placed **at least 2 orders**  
- Get the **most frequently ordered book**  
- List top **3 most expensive fantasy books**  
- Find cities where customers spent more than **30 amount**  

