--Data source is from freeCodeCamp.org Youtube channel
--https://github.com/ine-rmotr-curriculum/FreeCodeCamp-Pandas-Real-Life-Example/blob/master/data/sales_data.csv

Select *
From sales
Order by Date

--Add Date only table (without time)
Alter Table sales
Add DateOnly date

Update Sales
Set DateOnly = CONVERT(varchar, Date ,101)

--Rank Unit Sold per Year
Select Sum(Order_Quantity) as Order_Quantity_Year, Year
From Sales
Group By Year
Order By Order_Quantity_Year desc

--Rank Profit per Year
Select Sum(Profit) as Profit_Year, Year
From Sales
Group By Year
Order By Profit_Year desc

--Rank Category Sold
Select Product_Category, Count(Product_Category) as Total_Product_Category_Sold
From Sales
Group By Product_Category
Order By Total_Product_Category_Sold desc

--Rank Type of Bikes Sold
Select Sub_Category, Count(Sub_Category) as Total_Sub_Category_Sold
From Sales
Where Product_Category = 'Bikes'
Group By Sub_Category
Order By Total_Sub_Category_Sold desc

--Rank Bike Products Sold
Select Product, Sub_Category, Count(Product) as Total_Product_Sold
From Sales
Where Product_Category = 'Bikes'
Group By Product, Sub_Category
Order By Total_Product_Sold desc

--Rank Type of Accessories Sold
Select Sub_Category, Count(Sub_Category) as Total_Sub_Category_Sold
From Sales
Where Product_Category = 'Accessories'
Group By Sub_Category
Order By Total_Sub_Category_Sold desc

--Rank Accessories Products Sold
Select Product, Sub_Category, Count(Product) as Total_Product_Sold
From Sales
Where Product_Category = 'Accessories'
Group By Product, Sub_Category
Order By Total_Product_Sold desc

--Rank Type of Clothing Sold
Select Sub_Category, Count(Sub_Category) as Total_Sub_Category_Sold
From Sales
Where Product_Category = 'Clothing'
Group By Sub_Category
Order By Total_Sub_Category_Sold desc

--Rank Unit Sold Country
Select Country, sum(Order_Quantity) as Order_Quantity_Country
From Sales
Group By Country
Order by Order_Quantity_Country desc

--Rank Profit Country
Select Country, sum(Profit) as Profit_per_Country
From Sales
Group By Country
Order by Profit_per_Country desc
