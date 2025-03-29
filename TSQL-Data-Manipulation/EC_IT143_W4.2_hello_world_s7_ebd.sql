-- EC_IT143_W4.2_hello_world_s7_ebd.sql
CREATE PROCEDURE sp_UpdateTotalSalary
AS
BEGIN
    TRUNCATE TABLE tbl_TotalSalary;
    INSERT INTO tbl_TotalSalary
    SELECT * FROM vw_TotalSalary;
END;