-- Query 1: Original slow query
SELECT * FROM Person.Person WHERE MiddleName = 'A';

-- After seeing missing index recommendation
CREATE NONCLUSTERED INDEX IX_Person_MiddleName ON Person.Person(MiddleName);

-- Re-run query for performance comparison
SELECT * FROM Person.Person WHERE MiddleName = 'A';

-- Query 2: Another table
SELECT * FROM Production.Product WHERE Color = 'Red';

-- Index creation from recommendation
CREATE NONCLUSTERED INDEX IX_Product_Color ON Production.Product(Color);
