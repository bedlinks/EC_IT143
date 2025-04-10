-- Step 5 – Creating scalar function to extract first name
CREATE FUNCTION dbo.fn_GetFirstName (@ContactName NVARCHAR(100))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN LEFT(@ContactName, CHARINDEX(' ', @ContactName + ' ') - 1)
END;