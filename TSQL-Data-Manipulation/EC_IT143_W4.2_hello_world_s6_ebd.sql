-- EC_IT143_W4.2_hello_world_s6_ebd.sql
TRUNCATE TABLE tbl_TotalSalary;
INSERT INTO tbl_TotalSalary
SELECT * FROM vw_TotalSalary;