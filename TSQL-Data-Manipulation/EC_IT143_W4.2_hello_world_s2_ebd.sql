-- EC_IT143_W4.2_hello_world_s2_ebd.sql
-- We need to group by team and sum salaries
-- First, retrieve all player salary data
SELECT Team, SUM(Salary) AS TotalSalary
FROM Players
GROUP BY Team;