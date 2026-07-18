IF OBJECT_ID('dwh_finance_db.dbo.customers', 'U') IS NULL
BEGIN
    CREATE TABLE [dwh_finance_db].[dbo].[customers] (
        [CustomerID]    VARCHAR(50) NULL,
        [Name]          VARCHAR(50) NULL,
        [Country]       VARCHAR(50) NULL,
        [AccountStatus] VARCHAR(50) NULL
    );

    PRINT 'customers table created successfully.';
END
ELSE
BEGIN
    PRINT 'customers table already exists.';
END;