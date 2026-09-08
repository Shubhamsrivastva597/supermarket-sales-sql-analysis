# Supermarket Sales Analysis (MySQL)

## Overview
Exploratory Data Analysis (EDA) on 1,000 retail transactions using MySQL Workbench to uncover business insights around revenue performance, payment trends, and customer satisfaction.

## Key Insights & Queries Applied
1. **Executive Metrics**: Aggregated total revenue, total order count, and average order size.
2. **Product Line Performance**: Identified top-performing product categories ranked by sales volume.
3. **Branch Ranking**: Used `RANK() OVER()` to analyze total revenue across store locations.
4. **Customer & Payment Analysis**: Grouped transaction behavior across customer types (`Member` vs `Normal`) and payment methods.
5. **Satisfaction Segmentation**: Classified customer ratings into `High`, `Medium`, and `Low` tiers using conditional `CASE` statements.

## Project Structure
* `Supermarket_sales...`: SQL script containing all analytical queries.
* `screenshots/`: Execution results and visual grids from MySQL Workbench.
