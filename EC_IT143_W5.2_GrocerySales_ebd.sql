/*
EC_IT143_W5.2_GrocerySales_ebd.sql
Author: Ernest Baah Dwomoh
Course: EC IT143
Assignment: Final Project 5.2 - Create Answers
Community: Grocery Sales Community
GitHub Repository: https://github.com/ernestdwomoh/EC_IT143
Date: 2025-04-10
*/

-- Question 1: What are the top 5 best-selling products by quantity?
-- Author: Ernest Baah Dwomoh

SELECT TOP 5 ProductName, SUM(Quantity) AS TotalSold
FROM GrocerySales
GROUP BY ProductName
ORDER BY TotalSold DESC;

-- Question 2: What is the total revenue by store location?
-- Author: Ernest Baah Dwomoh

SELECT StoreLocation, SUM(Price * Quantity) AS TotalRevenue
FROM GrocerySales
GROUP BY StoreLocation
ORDER BY TotalRevenue DESC;

-- Question 3: What month had the highest total sales?
-- Author: Student - John Mensah

SELECT FORMAT(SaleDate, 'yyyy-MM') AS SaleMonth, 
       SUM(Price * Quantity) AS MonthlySales
FROM GrocerySales
GROUP BY FORMAT(SaleDate, 'yyyy-MM')
ORDER BY MonthlySales DESC;

-- Question 4: What is the average price per unit of each product category?
-- Author: Ernest Baah Dwomoh

SELECT Category, AVG(Price) AS AvgUnitPrice
FROM GrocerySales
GROUP BY Category
ORDER BY AvgUnitPrice DESC;