-- Step 7 – Test function with empty input
SELECT *  
FROM dbo.t_w3_schools_customers  
WHERE LEFT(ContactName, CHARINDEX(' ', ContactName + ' ') - 1) <> dbo.ufn_get_first_name(ContactName);