SELECT * FROM blinkit_data;

SELECT COUNT(*) FROM blinkit_data;


UPDATE blinkit_data
set Item_Fat_Content = 
case
WHEN Item_Fat_Content IN ('low fat','LF') THEN 'Low Fat'
WHEN Item_Fat_Content IN ('reg') THEN 'Regular'
ELSE 
Item_Fat_Content
END

SELECT DISTINCT (Item_Fat_Content) FROM blinkit_data;

SELECT SUM(Sales) as Total_sum FROM blinkit_data;

select cast(sum(sales )/ 1000000 as decimal(10,2)) as total_sales_million
from blinkit_data;



select CAST(AVG(Sales) as decimal(10,0)) as avg_sales from blinkit_data;

SELECT CAST(AVG(Sales) as decimal(10,1)) as Avg_sales from blinkit_data 
where Outlet_Establishment_Year = 2022;

SELECT COUNT(*) AS No_of_Items from blinkit_data
where Outlet_Establishment_Year = 2022;

SELECT CAST(AVG(Rating) as decimal(10,2) ) as AVG_Rating from blinkit_data;

select Item_Fat_Content , sum(Sales) as Total_Sales
 from blinkit_data
 Group By Item_Fat_Content;


 SELECT Outlet_Location_Type, Item_Fat_Content ,
 Cast(sum(Sales) as decimal(10,2) ) as total_sales
 from blinkit_data
 Group By Outlet_Location_Type, Item_Fat_Content
 Order By total_sales asc;

 select Outlet_Location_Type,
  isNULL([Low Fat],0) AS Low_Fat,
  isNULl([Regular],0) AS Regular 
  From 
 (
 select Outlet_Location_Type,Item_Fat_Content, 
 Cast(sum(Sales) as decimal(10,2) ) as total_sales
 from blinkit_data
 Group by Outlet_Location_Type, Item_Fat_Content
 ) 
 as sourceTable
 PIVOT
  (
  SUM(total_sales)
  for Item_Fat_Content In ([Low Fat], [Regular] ) 
  )
  As PivotTable
  Order BY Outlet_Location_Type;

   SELECT Outlet_Establishment_Year, 
 Cast(sum(Sales) as decimal(10,2) ) as total_sales
 from blinkit_data
 Group By Outlet_Establishment_Year
 Order By Outlet_Establishment_Year asc;
