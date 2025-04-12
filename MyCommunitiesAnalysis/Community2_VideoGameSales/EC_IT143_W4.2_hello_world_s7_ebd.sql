-- STEP 7: Join (Optional)
-- If we have a Games table, join it to provide game titles for better context.
-- Example assumes a Games table exists with gameid and title.

SELECT 
    r.playerid,
    g.title AS game_title,
    SUM(r.helpful) AS total_helpful,
    SUM(r.funny) AS total_funny,
    SUM(r.awards) AS total_awards
FROM Reviews r
JOIN Games g ON r.gameid = g.gameid
WHERE YEAR(r.posted) = 2024
GROUP BY r.playerid, g.title;