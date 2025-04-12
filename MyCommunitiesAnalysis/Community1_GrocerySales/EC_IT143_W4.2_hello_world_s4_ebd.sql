-- EC_IT143_W4.2_hello_world_s4_ebd.sql
-- Step 4: Clean the Data
-- Ensure no NULL values in key fields
-- Remove incomplete rows
DELETE FROM grocerysales
WHERE Quantity IS NULL OR Category IS NULL OR SaleDate IS NULL;