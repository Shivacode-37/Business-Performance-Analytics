-- Business Performance & Profitability Analysis
-- Database: superstore
-- Table: orders
-- Objective: Identify revenue drivers, profit leakage, and discount impact


-- Overall Business KPIs

SELECT
    COUNT(*) AS total_orders,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS overall_profit_margin_pct
FROM orders;

-- Observation:
-- The business generated 12.64M in revenue from 51,290 orders with an
-- overall profit margin of 11.61%, indicating moderate profitability.
-- The margin suggests potential pressure from discounts or cost structures,
-- which warrants deeper analysis at product and customer levels.


-- Revenue & Profit by Year

SELECT
    order_year,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_pct
FROM orders
GROUP BY order_year
ORDER BY order_year;

-- Observation:
-- All transactions belong to a single year (2025), resulting in
-- year-level metrics matching overall business KPIs.
-- Subsequent analysis will focus on intra-year patterns such as
-- monthly trends and segment-level performance.
