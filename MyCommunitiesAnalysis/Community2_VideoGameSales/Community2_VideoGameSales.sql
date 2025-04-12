-- Community 2: Video Game Sales
-- Query example: Total global sales by genre

SELECT 
    Genre,
    SUM(Global_Sales) AS Total_Global_Sales
FROM 
    VideoGameSales
GROUP BY 
    Genre
ORDER BY 
    Total_Global_Sales DESC;
