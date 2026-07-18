IF OBJECT_ID('stg_finance_db.dbo.customers', 'U') IS NULL
BEGIN
    CREATE TABLE [stg_finance_db].[dbo].[customers] (
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