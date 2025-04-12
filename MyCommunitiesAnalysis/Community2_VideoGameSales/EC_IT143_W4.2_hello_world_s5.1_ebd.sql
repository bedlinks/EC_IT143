-- STEP 5: Aggregation
-- Aggregate engagement metrics per player for the year 2024.
SELECT 
    playerid,
    COUNT(reviewid) AS total_reviews,
    SUM(helpful) AS total_helpful,
    SUM(funny) AS total_funny,
    SUM(awards) AS total_awards
FROM Reviews
WHERE YEAR(posted) = 2024
GROUP BY playerid;