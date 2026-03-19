E-Commerce Data Analysis Dashboard
📊 Project Overview

This project presents an end-to-end Data Analysis solution using the Olist E-Commerce dataset.
It covers data cleaning, transformation, analysis, and interactive dashboarding to derive actionable business insights.

The project is built using:

Python (Jupyter Notebook) → Data Cleaning & Preprocessing

SQL → Data Querying & Analysis

Power BI → Interactive Dashboard Visualization

📦 Dataset Information

📁 Source: Olist E-Commerce Dataset

📊 Total Records: ~118,000+ rows

🧾 Total Columns: ~35+ features

🗂️ Multiple datasets merged:

Orders

Customers

Order Items

Products

Payments

Sellers

🛠️ Data Processing Workflow (ETL)
🔹 1. Data Cleaning (Python)

Handled missing values intelligently

Converted date columns to proper datetime format

Removed duplicates

Created new features:

delivery_time

delay_status

is_delayed

🔹 2. Data Transformation

Merged multiple datasets into a single analytical dataset

Created calculated fields:

Avg Order Value

Customer Segmentation

Revenue metrics

🔹 3. SQL Analysis

Wrote SQL queries for:

Revenue insights

Customer behavior

Order trends

Optimized queries for performance

🔹 4. Data Visualization (Power BI)

Built 3-page interactive dashboard

Applied filters, slicers, and advanced visuals

📊 Dashboard Structure
🟢 Page 1: Business Overview
<img width="1097" height="728" alt="image" src="https://github.com/user-attachments/assets/0a208046-c3c6-4cc9-a395-22919664be4b" />

Key KPIs:

Total Revenue 💰

Total Orders 📦

Total Customers 👥

Avg Delivery Time ⏱️

Delayed Orders % ❌

Visuals:

Revenue Trend 📈

Orders by State 🌍

Payment Type Distribution 💳

Top Product Categories 🛍️

🔵 Page 2: Customer Insights
<img width="784" height="444" alt="image" src="https://github.com/user-attachments/assets/0aad575b-fa67-4fd5-8d53-ad3dcf1cd4ba" />

KPIs:

Total Customers

Avg Orders per Customer

Avg Customer Spend

Visuals:

Top Cities by Orders

Orders by State

Customer Growth Over Time

Customer Type (Repeat vs One-time)

🟣 Page 3: Product & Revenue Insights
<img width="782" height="437" alt="image" src="https://github.com/user-attachments/assets/7f10d8d1-05e4-4b40-b55f-28094f67147f" />

KPIs:

Avg Product Price 💵

Visuals:

Top Products by Revenue

Revenue by Installments

Freight Cost Distribution 🚚

Price vs Freight Analysis (Scatter)

Top Sellers by Revenue

Delivery Cost by Category

🎯 Key Insights

Majority of revenue is driven by a few top product categories

High customer base but low repeat rate → retention opportunity

Most orders fall in low delivery time → efficient logistics

Installment-based payments dominate mid-to-high value purchases

Strong correlation observed between product price and freight cost

📂 Project Files
🔹 Power BI Dashboard

👉 View Dashboard (https://drive.google.com/file/d/1YMC-fRExUtG7SP0z92EatnL8YwMidN6p/view?usp=sharing)

🔹 Cleaned Dataset

👉 Download Dataset (https://drive.google.com/file/d/1Kb3KwO0QuK2x6LlyQdiMRGviDQ2LyM3S/view?usp=sharing)

🔹 Jupyter Notebook (Python Cleaning)

👉 data_cleaning.ipynb(https://drive.google.com/file/d/1UtMdCwmFdpM0FBVCD6Wuey8FNQBFSi45/view?usp=sharing)

🔹 SQL Queries

👉 analysis_queries.sql()

⚙️ Tools & Technologies

Python (Pandas, NumPy)

SQL 

Power BI

Jupyter Notebook

💡 Business Value

This project demonstrates:

End-to-end data analysis workflow

Data cleaning and transformation skills

Business insight generation

Dashboard storytelling

📌 How to Use

Download dataset from provided link

Run Jupyter Notebook for cleaning

Execute SQL queries for analysis

Open Power BI file or view dashboard via link

📊 SQL Analysis Section (README me add karne ke liye)
🧾 SQL-Based Data Analysis

Structured Query Language (SQL) was used to extract meaningful insights from the dataset by performing joins, aggregations, and business-driven analysis queries.

🔹 Revenue Analysis

Calculated total revenue generated from all transactions

Analyzed revenue distribution across different payment types

Filtered revenue for only delivered orders to get accurate business performance

🔹 Payment Insights

Grouped revenue by payment methods (credit card, boleto, voucher, etc.)

Identified the most commonly used payment types contributing to revenue

🔹 Time-Based Analysis

Generated monthly revenue trends using date formatting

Tracked business growth over time

🔹 Customer Analysis

Identified Top 10 customers based on total spending

Calculated Customer Lifetime Value (CLV)

Segmented customers into:

Repeat Customers

New Customers

🔹 Geographic Insights

Performed region-wise revenue analysis

Identified top-performing states contributing to overall revenue

🔹 Product Analysis

Identified Top 10 product categories based on number of orders

Helped understand which categories drive the most demand

🔹 Delivery Performance Analysis

Calculated average delivery time for delivered orders

Identified top delayed deliveries

Analyzed logistics efficiency

🧠 SQL Techniques Used

JOIN operations (multiple table integration)

GROUP BY and ORDER BY for aggregation

CASE WHEN for customer segmentation

DATE_FORMAT for time-based analysis

LIMIT for top-N analysis

DATEDIFF for delivery time calculation

📌 SQL File

👉 Full SQL queries available here:(https://drive.google.com/file/d/1xUcoVfl1cY6pzU5_25W87sclpJ9uIA4L/view?usp=sharing)

🏁 Conclusion

This project showcases a complete Data Analyst workflow from raw data to business insights.
It is designed to solve real-world problems and demonstrate strong analytical thinking.

🙌 Author

Ranjan Yadav
Aspiring Data Analyst

⭐ If you like this project

👉 Star this repo
👉 Share feedback
