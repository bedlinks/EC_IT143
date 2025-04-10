-- Step 4 – Create audit columns and trigger

-- Add columns
ALTER TABLE dbo.t_w3_schools_customers
ADD LastModifiedBy NVARCHAR(100),
    LastModifiedDate DATETIME;
GO

-- Create trigger
CREATE TRIGGER trg_UpdateCustomerAudit
ON dbo.t_w3_schools_customers
AFTER UPDATE
AS
BEGIN
    UPDATE c
    SET 
        LastModifiedBy = SUSER_NAME(),
        LastModifiedDate = GETDATE()
    FROM dbo.t_w3_schools_customers c
    JOIN inserted i ON c.CustomerID = i.CustomerID;
END;
GO