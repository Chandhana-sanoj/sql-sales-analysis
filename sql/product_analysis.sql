-- Distribution: Revenue share by pizza category
SELECT 
    pizza_category,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
    CAST(
        SUM(total_price) * 100.0 / 
        (SELECT SUM(total_price) FROM pizza_sales)
        AS DECIMAL(10,2)
    ) AS pct_revenue
FROM pizza_sales
GROUP BY pizza_category;

-- Validation: percentage should sum to ~100
SELECT 
    SUM(
        SUM(total_price) * 100.0 / 
        (SELECT SUM(total_price) FROM pizza_sales)
    ) AS total_pct
FROM pizza_sales
GROUP BY pizza_category;

-- Distribution: Revenue share by pizza size
SELECT 
    pizza_size,
    CAST(SUM(total_price) AS DECIMAL(10,2)) AS total_revenue,
    CAST(
        SUM(total_price) * 100.0 / 
        (SELECT SUM(total_price) FROM pizza_sales)
        AS DECIMAL(10,2)
    ) AS pct_revenue
FROM pizza_sales
GROUP BY pizza_size
ORDER BY pizza_size;

-- Validation: percentage should sum to ~100
SELECT 
    SUM(
        SUM(total_price) * 100.0 / 
        (SELECT SUM(total_price) FROM pizza_sales)
    ) AS total_pct
FROM pizza_sales
GROUP BY pizza_size;

-- Product performance: Total pizzas sold by category
SELECT 
    pizza_category,
    SUM(quantity) AS total_pizzas_sold
FROM pizza_sales
GROUP BY pizza_category
ORDER BY total_pizzas_sold DESC;

-- Product performance: Top 5 best-selling pizzas by quantity
SELECT TOP 5 
    pizza_name, 
    SUM(quantity) AS total_pizza_sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_pizza_sold DESC;

-- Product performance: Bottom 5 worst-selling pizzas by quantity
SELECT TOP 5 
    pizza_name, 
    SUM(quantity) AS Total_Pizza_Sold
FROM pizza_sales
GROUP BY pizza_name
ORDER BY Total_Pizza_Sold ASC;

