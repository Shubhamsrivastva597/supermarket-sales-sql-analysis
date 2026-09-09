# Supermarket Sales Analysis (MySQL)

## Overview
Exploratory Data Analysis (EDA) on 1,000 retail transactions using MySQL Workbench to uncover business insights around revenue performance, payment trends, customer satisfaction, and multi-level product performance.

## Key Insights & Queries Applied

### Phase 1: Core EDA & Data Cleaning
1. **Schema & Field Modification**: Corrected data types for precision formatting using `ALTER TABLE` and `MODIFY COLUMN`.
2. **Executive Metrics**: Aggregated total revenue, total order count, and average customer ratings across transactions.
3. **Product Line Performance**: Evaluated overall sales volume and profit margins per product line.
4. **Satisfaction Segmentation**: Classified customer ratings into `High`, `Medium`, and `Low` tiers using conditional `CASE` logic.

### Phase 2: Subqueries, Window Functions & CTEs
5. **High-Value Sales Filtering**: Implemented scalar subqueries in the `WHERE` clause to isolate transactions performing above the baseline average spend.
6. **Temporal & Day-of-Week Trends**: Converted string dates using `STR_TO_DATE()` and analyzed weekly sales volume with `DAYNAME()`.
7. **Store & Category Leaderboards**: 
   * Used `DENSE_RANK() OVER (ORDER BY ...)` to establish global revenue rankings across store locations.
   * Applied `DENSE_RANK() OVER (PARTITION BY ... ORDER BY ...)` to evaluate category-specific transaction performance.
8. **Top-Ranked Product Analysis (CTEs)**: Built Common Table Expressions (CTEs) to bypass SQL execution order limitations and extract the top-performing product category for each city (`WHERE Rank = 1`).

## Project Structure
* `supermarket_sales_analysis.sql`: Unified SQL script containing all database setup, core EDA, window functions, and CTE queries.
* `screenshots/`: Execution results and visual grids from MySQL Workbench.
