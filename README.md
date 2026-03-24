# cottonon_data_warehouse
# 🛍️ Retail Sales Data Warehouse Analysis (Cotton On)

This project demonstrates the design and implementation of a professional **Star Schema** data warehouse. It transforms raw retail transaction data into a structured format optimized for high-performance Business Intelligence (BI) and analytical reporting.

## 📊 Project Overview
The primary goal of this repository is to showcase data engineering workflows, including schema design (DDL), data population (DML), and analytical SQL querying. 

**Key Business Questions Answered:**
* What is the total **Net Revenue** per month for the 2026 fiscal year?
* Which **City** contributes the highest **Total Tax** collection?
* How are product sales distributed across different customer segments?

---

## 🏗️ Data Architecture: The Star Schema
The project utilizes a central **Fact Table** connected to multiple **Dimension Tables**. This design minimizes data redundancy and improves query speed for large datasets.

### 🔹 Fact Table
* **`Fact_Sales`**: The core table containing quantitative metrics (`Net_Revenue`, `Total_Tax`, `Quantity`) and foreign keys to all dimensions.

### 🔹 Dimension Tables
* **`Dim_Customer`**: Detailed customer profiles and contact information.
* **`Dim_Product`**: Product attributes, including names and categories.
* **`Dim_Store`**: Physical store locations, allowing for regional performance analysis.
* **`Dim_Date`**: A comprehensive calendar table for time-series reporting.

---

## 📂 Repository Structure
To maintain a professional environment, the files are organized by their function within the data pipeline:

```text
├── schema/                 # Database Definition (DDL)
│   ├── fact_sales.sql
│   ├── dim_customer.sql
│   ├── dim_date.sql
│   ├── dim_product.sql
│   └── dim_store.sql
├── data/                   # Sample Data Population (DML)
│   ├── Fact_Sales.sql
│   └── Dim_*_values.sql
├── queries/                # Analytical SQL Scripts
│   └── cottonon_analysis.sql
└── README.md               # Project Documentation
