📘 Task 3 — SQL for Data Analysis
Data Analyst Internship | Elevate LabsTool Used: DB Browser for SQLiteDataset: Custom E-commerce SQL Database (created manually)

📝 Overview
This task focuses on applying SQL techniques to extract, analyze, and understand structured data stored in an E-commerce database.Using SQLite, the database was created from scratch and includes customers, products, orders, and order item transactions.
The goal is to practice real-world data analysis operations such as filtering, sorting, joining tables, aggregating values, using subqueries, creating views, and optimizing queries using indexes.

📂 Repository Structure
Day 3 – Task 3
│── README.md
│── E-Commerce.db     (Ecommerce_SQL_Database  - SQLite database file)
│── E-Commerce.sql    (All queries + table creation + data)
└── Sql Queries Screenshots.pdf (Query outputs)
🗃️ E-commerce Database Schema
Tables Included:
•	customers — Customer details
•	products — Product information
•	orders — Customer orders
•	order_items — Items purchased in each order
The database contains sample data for practical analysis.

🧪 SQL Concepts Covered
This project includes full coverage of:
✔ SELECT statements
✔ WHERE filters
✔ ORDER BY sorting
✔ GROUP BY aggregations
✔ Aggregate functions (SUM, AVG, COUNT, MAX, MIN)
✔ JOINS (INNER, LEFT)
✔ Subqueries
✔ Views
✔ Indexes for query optimization
All queries are included inside E-Commerce.sql.

🧱 Key SQL Queries Included
1️⃣ Basic Queries
•	View all customers
•	Fetch products over a specific price
•	Sort products by price
2️⃣ Aggregations
•	Count of orders per customer
•	Total revenue by category
3️⃣ JOINS
•	Customer + Orders join
•	Full order details (customer + product + quantity + revenue)
4️⃣ Subqueries
•	Customers who spent more than ₹50,000
•	Most expensive product
5️⃣ Views
•	revenue_summary view for repeated analysis
6️⃣ Index Optimization
•	idx_order_customer
•	idx_order_items_prod

🚀 How to Use This Project
1.	Install DB Browser for SQLite
2.	Open the .db file OR import the .sql file
3.	Run queries under the “Execute SQL” tab
4.	Take screenshots of results
5.	Upload everything to GitHub or submit as required

✔️ Outcome
By completing this task, you will:
•	Understand how to build and manage relational databases
•	Write complex SQL for real-world data analysis
•	Use JOINS, Subqueries, Views, and Indexes effectively
•	Strengthen SQL fundamentals used in analytics and BI
