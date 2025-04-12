-- STEP 4: Targeted Script
-- Focus only on reviews posted in 2024, with relevant engagement columns.
SELECT reviewid, playerid, gameid, helpful, funny, awards, posted
FROM Reviews
WHERE YEAR(posted) = 2024;