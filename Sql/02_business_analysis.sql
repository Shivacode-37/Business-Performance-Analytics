-- Loss-Making Orders Impact

SELECT
    loss_making_flag,
    COUNT(*) AS order_count,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders
GROUP BY loss_making_flag;

-- Observation:
-- A significant portion of orders are loss-making, contributing negatively
-- to total profit despite generating revenue, indicating profit leakage
-- within the business.


-- High Discount vs Profitability

SELECT
    high_discount_flag,
    COUNT(*) AS order_count,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_tt
FROM orders
GROUP BY high_discount_flag;

-- Observation:
-- Orders with high discounts show significantly lower profit margins,
-- suggesting aggressive discounting is a major driver of profit erosion.


-- Discount and Loss Combination

SELECT
    loss_making_flag,
    high_discount_flag,
    COUNT(*) AS order_count,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit
FROM orders
GROUP BY loss_making_flag, high_discount_flag
ORDER BY loss_making_flag DESC, high_discount_flag DESC;

-- Observation:
-- Loss-making orders combined with high discounts represent the
-- highest profit leakage segment, requiring immediate pricing
-- and promotion strategy review.


-- Profit Leakage by Category

SELECT
    category,
    COUNT(*) AS order_count,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_tt
FROM orders
GROUP BY category
ORDER BY profit_margin_pct ASC;

-- Observation:
-- Certain categories exhibit low or negative profit margins despite
-- strong revenue contribution, highlighting category-level
-- profit optimization opportunities.

-- Top 10 Products by Revenue

SELECT
    product_id,
    product_name,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    RANK() OVER (ORDER BY SUM(sales) DESC) AS revenue_rank
FROM orders
GROUP BY product_id, product_name
ORDER BY total_revenue DESC
LIMIT 10;

-- Observation:
-- The top revenue-generating products contribute significantly to overall sales,
-- but not all of them are equally profitable, indicating the need to assess
-- margin performance alongside revenue.


-- Bottom 10 Products by Profit

SELECT
    product_id,
    product_name,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    RANK() OVER (ORDER BY SUM(profit) ASC) AS loss_rank
FROM orders
GROUP BY product_id, product_name
ORDER BY total_profit ASC
LIMIT 10;

-- Observation:
-- The bottom-performing products generate losses despite contributing revenue,
-- making them key targets for pricing review, cost optimization, or discontinuation.


-- High Revenue but Low Profit Products

SELECT
    product_id,
    product_name,
    ROUND(SUM(sales), 2) AS total_revenue,
    ROUND(SUM(profit), 2) AS total_profit,
    ROUND(SUM(profit) / SUM(sales) * 100, 2) AS profit_margin_tt
FROM orders
GROUP BY product_id, product_name
HAVING SUM(sales) > (
    SELECT AVG(product_sales)
    FROM (
        SELECT SUM(sales) AS product_sales
        FROM orders
        GROUP BY product_id
    ) t
)
AND SUM(profit) < 0
ORDER BY total_revenue DESC;

-- Observation:
-- Several high-revenue products are loss-making, indicating hidden profit leakage
-- where sales volume does not translate into profitability.
