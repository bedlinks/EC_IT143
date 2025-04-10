-- Step 8 – Ask next question: How do I extract the last name?

-- Then repeat steps 1–7 for:
CREATE FUNCTION dbo.fn_GetLastName (@ContactName NVARCHAR(100))
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN RIGHT(@ContactName, CHARINDEX(' ', REVERSE(@ContactName + ' ')) - 1)
END;