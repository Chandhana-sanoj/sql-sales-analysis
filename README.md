#SQL Sales Analysis

## Problem Statement & Objective

The objective of this project is to analyze transactional sales data to understand overall business performance, customer demand patterns, and product-level sales trends.
The analysis focuses on answering key business questions related to revenue generation, order behavior, peak demand periods, and product performance to support data-driven decision-making.


## Dataset
- Transaction-level pizza sales dataset stored in CSV format
- Each row represents a pizza item within a customer order
- Key attributes include order date and time, quantity sold, pricing, pizza category, size, and product details

The dataset was loaded into SQL Server for analysis and connected to Excel for reporting.


## Analysis Process

### 1. Data Preparation & Validation
- Imported raw CSV data into SQL Server
- Verified data consistency and structure
- Performed validation checks on key numerical fields (revenue, quantity, order counts)
- Ensured correct handling of multi-item orders using distinct order identifier.

### 2. KPI Calculation
Calculated core business KPIs using SQL:
- Total Revenue
- Total Orders
- Total Pizzas Sold
- Average Order Value
- Average Pizzas per Order

These metrics provide a high-level view of overall sales performance.

### 3. Exploratory Data Analysis (EDA)
Exploratory analysis was conducted using SQL to identify:
- Daily trends in total orders
- Hourly demand patterns to identify peak ordering times
- Sales distribution by pizza category and size
- Best-selling and least-selling pizza products

## Key Findings & Insights
- Order volume shows clear peaks during lunch and dinner hours, indicating predictable demand windows.
- A small number of pizza products contribute a significant portion of total sales.
- Certain categories generate higher revenue despite lower order volume, suggesting higher-priced or premium items.
- Average pizzas per order indicates opportunities for upselling and bundled promotions.

## Recommendations
- Optimize staffing and inventory during peak lunch and dinner hours to meet demand efficiently.
- Focus marketing and promotional efforts on top-performing pizza products.
- Introduce combo offers or add-ons to increase the average number of pizzas per order.
- Review low-performing products to evaluate pricing, placement, or potential removal.

## Automated Reporting & Visualization
- SQL queries were connected directly to Excel for reporting
- An interactive Excel dashboard was built to visualize KPIs, trends, and product performance
- The dashboard enables quick monitoring of sales performance without manual recalculation


## Tools Used
- Microsoft SQL Server
- SQL Server Management Studio (SSMS)
- Microsoft Excel
