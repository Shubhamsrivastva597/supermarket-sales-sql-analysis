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

Desc Supermarket_sales;

Select  Count(`Invoice Id`) as `Total Order`, round(Avg(`Rating`),2) as `Avg Rating` from supermarket_Sales;

Select `Invoice Id`,`Customer Type`, `Payment` from supermarket_Sales
WHERE `Customer Type` = 'Member' AND `Payment` = 'Ewallet';

select city, round(Sum(`total`),2) from supermarket_sales
group by City;

Select `Product line`, sum(Quantity) As `Total Qty Sold`from 
supermarket_sales
group by `product line`
having `Total Qty Sold` > 500;

Select `invoice Id`, Total from supermarket_sales
WHERE `Total` > (Select Avg(`Total`) from supermarket_sales);

SELECT `Date` FROM supermarket_sales LIMIT 5;

Select monthname(STR_TO_DATE(`Date`, '%m/%d/%Y')) AS Month,
Round(Sum(Total),2) As `Total Revenue`
from Supermarket_Sales
group by`Month`
Order by `total Revenue` Desc;


Select  Branch,`Product Line`, round(Sum(Total),2) AS `tOTAL REVENUE`, 
DENSE_RANK () OVER(Partition By `Branch` Order by Sum(Total) Desc) AS `REVENUE rANK`
from Supermarket_Sales
Group By Branch, `Product Line`;



Select `Invoice ID`, `Product Line`, Quantity
From supermarket_sales
where Quantity > (Select avg(Quantity) from supermarket_sales);

Select round(Sum(Total),2) As Total_Revenue 
from Supermarket_sales
Where Total > (Select avg(Total) from supermarket_sales);


Select DAYNAME(str_to_date(DATE, '%m/%d/%Y')) AS `Day Name`, round(Sum(Total),2) as `Total Revenue`
from Supermarket_Sales
Group By `Day Name`
Order By `Total Revenue` desc;

Select Branch, round(Sum(Total),2) as `Total Revenue`, 
dense_rank()  Over(Order By Sum(Total)  DESC) as Revenue_Rank
from Supermarket_Sales
Group By Branch;

Select `Invoice Id`, `Product Line`, Total,
dense_rank() Over(Partition By `Product Line` order by Total DESC ) As `Product Line Ranking`
from supermarket_Sales;

Select City, `Product line`, round(Sum(Total),2) as `Total Revenue`,
dense_rank () Over(partition by City Order by Sum(Total) DESC) AS `Rank in City`
from supermarket_sales
Group By City, `Product line`;

With Ranksales AS (
Select City, `Product line`, round(Sum(Total),2) as `Total Revenue`,
dense_rank () Over(partition by City Order by Sum(Total) DESC) AS `Rank in City`
from supermarket_sales 
Group By City, `Product line`)
Select City, `Product Line`, `Total Revenue`, `Rank in city` from Ranksales
Where `Rank in city` = 1;











