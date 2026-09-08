ALTER TABLE supermarket_sales 
MODIFY COLUMN `gross margin percentage` DECIMAL(10,6);
DESC supermarket_sales;
Select Sum(Total) from supermarket_sales;
Select count('Invoice ID') AS total_no_of_orders, 
Sum(total) as Total_Revenue,
SUM(`gross income`) as Total_Profit, 
avg(Rating) as Avg_Rating from Supermarket_sales;






select count(`Invoice Id`) as `Total Order`, round(Sum(`total`),2) as `Total Revenue`,
round(Sum(`Gross Income`),2) As `Total Profit`, `Product Line` from Supermarket_sales
group by `Product Line`
Order By round(Sum(`total`),2) DESC;

Select Branch,City, round(Sum(`total`),2) as `total_Revenue`, 
dense_rank() over( order by round(Sum(`total`),2) DESC) As `Revenue Rank`
from Supermarket_Sales
GROUP BY Branch, City;


select `Customer Type`, Payment, round(sum(`Total`),2) as Total_Revenue, count(`Invoice ID`) As total_orders 
From Supermarket_Sales
Group by `Customer Type`, Payment
order by `Customer Type`, sum(`Total`) desc; 


Select count(`Invoice ID`) As `Total Orders`, round(Sum(`total`),2) As `Total Revenue`,
CASE 
WHEN Rating >= 8 THEN 'High'
when Rating >= 6 THEN 'Medium'
ELSE 'LOW'
END AS `Satisfaction level`
from supermarket_sales
group by `Satisfaction level`
ORDER BY `Total orders` DESC;








