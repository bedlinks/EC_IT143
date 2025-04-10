-- Step 6 – Compare results using scalar function
SELECT 
    ContactName,
    dbo.fn_GetFirstName(ContactName) AS FirstName
FROM 
    dbo.t_w3_schools_customers;