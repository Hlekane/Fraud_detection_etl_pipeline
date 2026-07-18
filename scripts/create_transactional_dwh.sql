IF OBJECT_ID('dwh_finance_db.dbo.transactional', 'U') IS NULL
BEGIN
    CREATE TABLE [dwh_finance_db].[dbo].[transactional] (
        [CustomerID]      VARCHAR(50) NULL,
        [TransactionID]   VARCHAR(50) NULL,
        [Amount]          VARCHAR(50) NULL,
        [TransactionDate] VARCHAR(50) NULL,
        [Location]        VARCHAR(50) NULL
    );

    PRINT 'transactional table created successfully.';
END
ELSE
BEGIN
    PRINT 'transactional table already exists.';
END;