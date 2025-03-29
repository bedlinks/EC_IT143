-- EC_IT143_W4.2_hello_world_s3_ebd.sql
-- Get total salary per team
CREATE VIEW vw_TotalSalaryPerTeam AS
SELECT Team, SUM(Salary) AS TotalSalary
FROM Players
GROUP BY Team;