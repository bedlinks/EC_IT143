-- EC_IT143_W4.2_hello_world_s3_ebd.sql
-- Step 3: Create the Core Query
SELECT Category, SUM(Quantity) AS TotalSales
FROM grocerysales
WHERE YEAR(SaleDate) = 2024
GROUP BY Category;