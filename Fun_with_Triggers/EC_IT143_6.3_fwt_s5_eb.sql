-- Step 5 – Test the trigger
UPDATE dbo.t_w3_schools_customers
SET ContactName = 'David Peterson'
WHERE CustomerID = 1;

-- Check result
SELECT ContactName, LastModifiedBy, LastModifiedDate
FROM dbo.t_w3_schools_customers
WHERE CustomerID = 1;