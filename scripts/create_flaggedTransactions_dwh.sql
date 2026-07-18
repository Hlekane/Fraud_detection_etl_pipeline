IF OBJECT_ID('dwh_finance_db.dbo.FlaggedTransactions', 'U') IS NULL
BEGIN
    CREATE TABLE [dwh_finance_db].[dbo].[FlaggedTransactions] (
        [CustomerID]      VARCHAR(50) NULL,
        [Name]            VARCHAR(50) NULL,
        [Country]         VARCHAR(50) NULL,
        [AccountStatus]   VARCHAR(50) NULL,
        [TransactionID]   VARCHAR(50) NULL,
        [Amount]          VARCHAR(50) NULL,
        [TransactionDate] VARCHAR(50) NULL,
        [Location]        VARCHAR(50) NULL
    );

    PRINT 'FlaggedTransactions table created successfully.';
END
ELSE
BEGIN
    PRINT 'FlaggedTransactions table already exists.';
END;