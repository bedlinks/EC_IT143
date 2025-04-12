-- EC_IT143_W4.2_hello_world_s5.1_ebd.sql
-- Step 5: Format the Results
-- Total units sold per category
SELECT Category,
       SUM(Quantity) AS TotalUnitsSold
FROM grocerysales
WHERE YEAR(SaleDate) = 2024
GROUP BY Category
ORDER BY TotalUnitsSold DESC;