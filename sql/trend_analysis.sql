-- Trend: Total orders by day of week
SELECT 
    DATENAME(DW, order_date) AS order_day,
    COUNT(DISTINCT order_id) AS total_orders 
FROM pizza_sales
GROUP BY DATENAME(DW, order_date);

-- Trend: Total orders by hour of day
SELECT 
    DATEPART(HOUR, order_time) AS order_hours,
    COUNT(DISTINCT order_id) AS total_orders
FROM pizza_sales
GROUP BY DATEPART(HOUR, order_time)
ORDER BY DATEPART(HOUR, order_time);
