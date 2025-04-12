-- EC_IT143_W4.2_hello_world_s7_ebd.sql
-- Save summary for reporting
SELECT Category,
       SUM(Quantity) AS TotalUnitsSold
INTO Export_GrocerySales_Summary
FROM grocerysales
WHERE YEAR(SaleDate) = 2024
GROUP BY Category;