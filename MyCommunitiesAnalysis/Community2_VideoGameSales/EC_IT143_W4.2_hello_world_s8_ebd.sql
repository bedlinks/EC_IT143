-- STEP 8: Final Filtering
-- Focus only on games with reviews that received more than 10 helpful votes.
SELECT 
    r.playerid,
    g.title AS game_title,
    SUM(r.helpful) AS total_helpful,
    SUM(r.funny) AS total_funny,
    SUM(r.awards) AS total_awards
FROM Reviews r
JOIN Games g ON r.gameid = g.gameid
WHERE YEAR(r.posted) = 2024
GROUP BY r.playerid, g.title
HAVING SUM(r.helpful) > 10;