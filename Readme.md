
# 📊 Business Performance & Profitability Analytics

### *(Superstore Profit Leakage Analysis)*

---

## 📌 Project Overview

This project delivers an **end-to-end business analytics solution** to analyze sales performance, profitability drivers, and discount impact using real-world retail transactional data.

The primary objective is to identify  **profit leakage** ,  **loss-making orders** , and  **discount-driven margin erosion** , and translate these findings into  **actionable business recommendations** .

The project simulates the work of a  **professional Data Analyst** , covering:

* Data cleaning & feature engineering
* SQL-based business analysis
* Executive-level Power BI dashboarding

---

## 🎯 Business Problem

Many organizations generate strong revenue but still struggle with **declining profitability** due to:

* Aggressive discounting
* Loss-making orders hidden inside high sales volume
* Poor visibility into profit leakage drivers

This project answers key business questions:

* Why is profitability low despite high revenue?
* Which orders are loss-making?
* How do discounts impact profit?
* Where is profit leakage concentrated?
* Which categories require immediate corrective action?

---

## 🧰 Tech Stack

* **Python (Pandas, NumPy)** – Data cleaning & feature engineering
* **SQL (MySQL)** – KPI calculation and business analysis
* **Power BI** – Executive dashboards & visual storytelling
* **Git & GitHub** – Version control & portfolio hosting

---

## 📊 Dataset

Retail transactional sales data containing:

* Orders
* Customers
* Products
* Categories & regions
* Discounts, sales, and profit metrics

Raw data is treated as **source-of-truth** and never modified directly.

---

## 🏗️ Project Architecture

<pre class="overflow-visible! px-0!" data-start="2042" data-end="2481"><div class="contain-inline-size rounded-2xl corner-superellipse/1.1 relative bg-token-sidebar-surface-primary"><div class="sticky top-[calc(--spacing(9)+var(--header-height))] @w-xl/main:top-9"><div class="absolute end-0 bottom-0 flex h-9 items-center pe-2"><div class="bg-token-bg-elevated-secondary text-token-text-secondary flex items-center gap-4 rounded-sm px-2 font-sans text-xs"></div></div></div><div class="overflow-y-auto p-4" dir="ltr"><code class="whitespace-pre!"><span><span>business-performance-analytics/
│
├── data/
│   ├── raw/
│   │   └── superstore_raw.csv
│   └── processed/
│       └── superstore_cleaned.csv
│
├── notebooks/
│   └── </span><span>01</span><span>_data_cleaning_and_feature_engineering.ipynb
│
├── </span><span>sql</span><span>/
│   └── business_analysis.</span><span>sql</span><span>
│
├── powerbi/
│   └── Superstore_Profit_Leakage.pbix
│
├── screenshots/
│   ├── executive_overview.png
│   └── profit_leakage_analysis.png
│
├── README.md
└── requirements.txt
</span></span></code></div></div></pre>

---

## 🔄 Project Workflow

### 1️⃣ Data Preparation & Feature Engineering

* Loaded and inspected raw sales data
* Standardized column naming for SQL & BI compatibility
* Validated data types and data quality
* Engineered key business features:
  * Profit margin
  * Loss-making flag
  * High-discount flag
  * Time-based features
* Generated a clean, analysis-ready dataset

---

### 2️⃣ SQL Business Analysis *(Completed)*

* Calculated core KPIs:
  * Total Revenue
  * Total Profit
  * Profit Margin %
  * Total Orders
* Identified loss-making orders
* Analyzed discount impact on profitability
* Segmented losses by category and discount bucket

---

### 3️⃣ Power BI Dashboard *(Completed)*

The Power BI dashboard is designed for **executive decision-making** and  **root-cause analysis** .

#### 📄 Dashboard Pages

### 1️⃣ Executive Overview

High-level business performance snapshot:

* Total Revenue, Profit, Profit Margin %, Orders
* Revenue & Profit by Category
* Loss-Making vs Profitable Orders

📸 Preview:

---

### 2️⃣ Profit Leakage Analysis

Deep-dive analysis to identify root causes:

* Loss-Making Orders & Loss %
* Discount vs Profit (Order-level leakage pattern)
* High Discount Orders & Loss Impact
* Loss Concentration by Category

📸 Preview:

---

## 📈 Key Metrics Created

* Revenue
* Profit
* Profit Margin %
* Total Orders
* Loss-Making Orders
* Loss Order %
* High Discount Indicator

These metrics enable  **decision-oriented analysis** , not just reporting.

---

## 📌 Key Insights

* ~24% of total orders are **loss-making**
* **High discounts strongly correlate with negative profit**
* Loss-making orders cluster beyond a critical discount threshold
* **Office Supplies** contributes the highest volume of loss-making orders
* Profit leakage is driven primarily by pricing and discount strategy

---

## ✅ Business Recommendations

* Introduce **discount caps** for low-margin products
* Review pricing strategy for high-loss categories
* Flag high-risk orders using discount and margin thresholds
* Monitor loss-making orders as a core KPI

---

## 🚀 Outcome

This project demonstrates:

* End-to-end ownership of a business analytics problem
* Strong SQL-based business reasoning
* Executive-level Power BI dashboard design
* Ability to convert data into **actionable business decisions**
* Readiness for **Data Analyst / Business Analyst roles (2+ years experience)**

---

## 📬 Author

**Mohit Kumar**

Data Analyst | SQL | Python | Power BI

---

## 🔖 Note

This project was executed with a  **3-day delivery mindset** , simulating real-world analytics delivery under tight deadlines.
