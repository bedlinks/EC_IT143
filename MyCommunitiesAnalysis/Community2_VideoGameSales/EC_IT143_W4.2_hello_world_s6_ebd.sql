-- STEP 6: Sorting
-- Rank players based on the number of helpful votes they received.
SELECT 
    playerid,
    COUNT(reviewid) AS total_reviews,
    SUM(helpful) AS total_helpful,
    SUM(funny) AS total_funny,
    SUM(awards) AS total_awards
FROM Reviews
WHERE YEAR(posted) = 2024
GROUP BY playerid
ORDER BY total_helpful DESC;