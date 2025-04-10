-- Step 5 – Creating scalar function to extract first name

-- Drop if it already exists
IF OBJECT_ID('dbo.fn_GetLastName', 'FN') IS NOT NULL
    DROP FUNCTION dbo.fn_GetLastName;
GO

-- Create the function
CREATE FUNCTION dbo.fn_GetLastName (
    @ContactName NVARCHAR(100)
)
RETURNS NVARCHAR(50)
AS
BEGIN
    RETURN LTRIM(RIGHT(@ContactName, LEN(@ContactName) - CHARINDEX(' ', @ContactName + ' ')));
END;
GO