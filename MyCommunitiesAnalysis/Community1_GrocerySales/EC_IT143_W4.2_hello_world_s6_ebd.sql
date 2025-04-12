-- EC_IT143_W4.2_hello_world_s6_ebd.sql
-- Step 6: Analyze the Results
-- Optional deeper analysis
-- Step 6 (Optional deeper analysis)
-- Average units per sale per category
SELECT Category,
       AVG(Quantity) AS AvgUnitsPerSale
FROM grocerysales
WHERE YEAR(SaleDate) = 2024
GROUP BY Category
ORDER BY AvgUnitsPerSale DESC;