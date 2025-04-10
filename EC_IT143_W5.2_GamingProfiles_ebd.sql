/*
EC_IT143_W5.2_GamingProfiles_ebd.sql
Author: Ernest Baah Dwomoh
Course: EC IT143
Assignment: Final Project 5.2 - Create Answers
Community: Gaming Profiles Community
GitHub Repository: https://github.com/ernestdwomoh/EC_IT143
Date: 2025-04-10
*/

-- Question 1: What are the top 3 most played games?
-- Author: Ernest Baah Dwomoh

SELECT GameTitle, SUM(HoursPlayed) AS TotalHours
FROM GamingProfiles
GROUP BY GameTitle
ORDER BY TotalHours DESC
OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY;

-- Question 2: What is the average age of players by gender?
-- Author: Ernest Baah Dwomoh

SELECT Gender, AVG(Age) AS AvgAge
FROM GamingProfiles
GROUP BY Gender;

-- Question 3: Which players have spent more than 100 hours on a single game?
-- Author: Student - Mary Adu

SELECT PlayerID, GameTitle, HoursPlayed
FROM GamingProfiles
WHERE HoursPlayed > 100
ORDER BY HoursPlayed DESC;

-- Question 4: What percentage of players prefer mobile over PC or console?
-- Author: Ernest Baah Dwomoh

SELECT 
  DevicePreference,
  COUNT(*) * 100.0 / (SELECT COUNT(*) FROM GamingProfiles) AS PreferencePercentage
FROM GamingProfiles
GROUP BY DevicePreference;