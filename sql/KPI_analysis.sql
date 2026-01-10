-- KPI: Total revenue across all transactions
SELECT 
    SUM(total_price) AS total_revenue
FROM pizza_sales;

-- Data validation for revenue values
SELECT 
    MIN(total_price) AS min_total_price,
    MAX(total_price) AS max_total_price
FROM pizza_sales;

-- KPI: Average revenue generated per order
SELECT 
     SUM(total_price) / COUNT(DISTINCT order_id) AS avg_order_value
FROM pizza_sales;

-- Validation: total distinct orders used for AOV
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales;

--KPI: Total number of pizzas sold
SELECT 
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales;

-- Validation: check quantity range
SELECT 
    MIN(quantity) AS min_quantity,
    MAX(quantity) AS max_quantity
FROM pizza_sales;

-- KPI: Total number of distinct orders
SELECT 
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales;

-- Validation: compare total rows vs distinct orders
SELECT 
    COUNT(*) AS total_rows,
    COUNT(DISTINCT order_id) AS distinct_orders
FROM pizza_sales;

--KPI: Average number of pizzas per order
SELECT 
    ROUND(
        SUM(quantity) * 1.0 / COUNT(DISTINCT order_id),
        2
    ) AS avg_pizzas_per_order
FROM pizza_sales;







