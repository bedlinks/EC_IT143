-- Community 1: Grocery Sales
-- Query example: Top 5 departments with highest total sales

SELECT 
    Department,
    SUM(Sales) AS TotalSales
FROM 
    GrocerySales
GROUP BY 
    Department
ORDER BY 
    TotalSales DESC;
