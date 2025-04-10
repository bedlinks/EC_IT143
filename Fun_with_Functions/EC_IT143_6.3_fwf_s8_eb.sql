-- Step 8 – Ask next question: How do I extract the last name?

-- Then repeat steps 1–7 for:
SELECT 
    ContactName,
    SUBSTRING(ContactName, CHARINDEX(' ', ContactName + ' ') + 1, LEN(ContactName)) AS LastName
FROM 
    dbo.t_w3_schools_customers;