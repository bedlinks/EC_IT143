-- Step 7 – Test function with empty input
SELECT dbo.fn_GetFirstName('') AS Result1,
       dbo.fn_GetFirstName(NULL) AS Result2;