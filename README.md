# Cloud-Based Sales Data Warehouse & BI Analytics Platform

## 📌 Overview

This project implements an end-to-end cloud data engineering pipeline that transforms raw sales data into a structured analytical data warehouse using star schema modeling.

The solution simulates a production-style environment by integrating AWS infrastructure, ETL processing, relational data modeling, query optimization, and business intelligence reporting.

It demonstrates practical skills in cloud computing, data engineering, database optimization, and analytics dashboard development.

---

## 🏗 System Architecture

Kaggle Dataset  
↓  
Amazon S3 (Raw Data Storage)  
↓  
EC2 (Python ETL Processing)  
↓  
MySQL (Star Schema Data Warehouse)  
↓  
Power BI (Executive Analytics Dashboard)

---

## 🏗 Architecture Diagram

![Architecture Diagram](architecture_diagram (2).png)

## ⚙️ Technology Stack

### Cloud
- AWS EC2
- AWS S3

### Data Engineering
- Python (Pandas for transformation)
- SQLAlchemy + PyMySQL (Database connectivity)

### Database
- MySQL
- Star Schema Modeling
- Foreign Key Constraints
- Indexing & Query Optimization
- Aggregated SQL Views

### Business Intelligence
- Power BI

---

## 🗄 Data Warehouse Design

### Fact Table
- `fact_sales` – transactional sales data

### Dimension Tables
- `dim_product`
- `dim_region`
- `dim_payment`
- `dim_date`

### Optimization & Integrity
- Indexed foreign keys for faster join performance
- Composite indexing for date-based regional analysis
- Enforced referential integrity via foreign key constraints
- Created `monthly_revenue` view for optimized reporting

---

## 📊 Key Business Metrics

- Total Revenue
- Total Orders
- Total Units Sold
- Average Order Value
- Revenue by Product Category
- Revenue by Region
- Monthly Revenue Trends

---

## 🚀 Key Engineering Highlights

- Processed and transformed 50,000+ sales records using a cloud-based ETL pipeline.
- Designed and implemented a scalable star schema optimized for analytics workloads.
- Improved query performance through strategic indexing on fact-table foreign keys.
- Ensured 100% referential integrity across warehouse tables.
- Built an interactive executive-level dashboard in Power BI with dynamic filtering and KPIs.

---

## 📁 Project Structure

```
cloud-sales-data-warehouse/
│
├── etl/
│   └── etl.py
│
├── sql/
│   ├── create_star_schema.sql
│   ├── indexes_and_constraints.sql
│   └── views.sql
│
├── dashboard/
│   └── dashboard_screenshots.png
│
└── README.md
```


---

## 📷 Dashboard Preview

(Add dashboard screenshot here after building Power BI report.)

Example:
![Dashboard Screenshot](dashboard/dashboard_screenshots.png)

---

## 📚 Dataset

Dataset sourced from Kaggle: Amazon Sales Dataset.  
Used strictly for educational and portfolio demonstration purposes.

---

## 👨‍💻 Author

Developed as part of a Cloud Data Engineering & Business Intelligence portfolio project demonstrating real-world data modeling and analytics skills.
