# 📊 Business Performance & Profitability Analytics

## 📌 Project Overview

This project delivers an **end-to-end business analytics solution** to analyze sales performance, profitability drivers, and discount impact using real-world retail transactional data.

The objective is to identify  **profit leakage** ,  **high-value segments** , and **actionable insights** that support data-driven decision-making.

The project simulates the work of a  **professional Data Analyst** , covering data cleaning, feature engineering, SQL analysis, and business visualization.

---

## 🎯 Business Problem

Organizations often generate high revenue but still struggle with **declining profitability** due to:

* Aggressive discounting
* Loss-making products
* Inefficient regional or customer strategies

This project aims to answer key business questions such as:

* Which products generate revenue but lose money?
* How do discounts impact profitability?
* Where is profit leakage happening?
* Which customers and regions drive the most value?

---

## 🧰 Tech Stack

* **Python** (Pandas, NumPy) – Data cleaning & feature engineering
* **SQL** – Business analysis using joins, CTEs, and window functions
* **Power BI** – Interactive dashboards & executive reporting
* **Git & GitHub** – Version control and project documentation

---

## 📊 Dataset

Retail transactional sales data containing:

* Orders
* Customers
* Products
* Regions & markets
* Discounts & profitability metrics

Raw data is treated as **source-of-truth** and never modified directly.

---

## 🏗️ Project Architecture

<pre class="overflow-visible! px-0!" data-start="1954" data-end="2352"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="sticky top-[calc(--spacing(9)+var(--header-height))] @w-xl/main:top-9"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre!"><span><span>business</span><span>-</span><span>performance</span><span>-</span><span>analytics</span><span>/</span><span>
│
├── data</span><span>/</span><span>
│   ├── raw</span><span>/</span><span>
│   │   └── superstore_raw.csv
│   └── processed</span><span>/</span><span>
│       └── superstore_cleaned.csv
│
├── notebooks</span><span>/</span><span>
│   └── </span><span>01</span><span>_data_cleaning_and_feature_engineering.ipynb
│
├── </span><span>sql</span><span>/</span><span>
│   └── (</span><span>SQL</span><span> analysis queries)
│
├── powerbi</span><span>/</span><span>
│   └── (</span><span>dashboard)
│
├── reports</span><span>/</span><span>
│   └── (Business insights summary)
│
├── README.md
└── requirements.txt
</span></span></code></div></div></pre>

---

## 🔄 Project Workflow

### Data Preparation & Feature Engineering

* Loaded and inspected raw sales data
* Standardized column naming for SQL & BI compatibility
* Validated data types and data quality
* Engineered key business metrics:
  * Revenue
  * Profit margin
  * Discount amount
  * Loss-making flag
  * High-discount flag
  * Time-based features
* Generated a clean, analysis-ready dataset

### SQL Business Analysis *(In Progress)*

* Advanced SQL analysis using:
  * Joins
  * CTEs
  * Window functions
* Profit leakage identification
* Discount vs profitability analysis
* Customer and regional performance analysis

### Power BI Dashboard *(Planned)*

* Executive-level KPIs
* Product, customer, and regional insights
* Discount impact visualization
* Business-ready dashboard storytelling

---

## 📈 Key Metrics Created

* **Revenue**
* **Profit Margin**
* **Discount Amount**
* **Loss-Making Indicator**
* **High Discount Indicator**
* **Monthly & Yearly Trends**

These metrics enable  **decision-oriented analysis** , not just reporting.

---

## 📌 Key Insights (Preview)

* A significant portion of transactions are **loss-making despite high discounts**
* Certain products generate high sales volume but low profitability
* Discounts are not uniformly effective across products and regions
* Profit leakage can be traced to specific segments and markets

*(Detailed insights will be added after SQL & Power BI analysis.)*

---

## 🚀 Outcome

This project demonstrates:

* Strong **data cleaning and preparation skills**
* Ability to think in  **business terms** , not just code
* End-to-end ownership of an analytics solution
* Readiness for **Data Analyst roles with 2+ years experience**

---

## 📬 Author

Mohit Kumar

Data Analyst | SQL | Python | Power BI

---

## 🔖 Note

This project is built with a  **3-day execution mindset** , simulating real-world analytics delivery under tight deadlines
