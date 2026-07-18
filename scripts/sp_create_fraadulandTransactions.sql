
CREATE   PROCEDURE dwh_finance_db.[dbo].[sp_create_FraudulandTransactions]
AS
BEGIN

    /* Print a message to show the procedure started */
    PRINT 'Starting FraudulandTransactions table creation...';

    /* Drop the table if it exists */
    IF OBJECT_ID('dwh_finance_db.dbo.FraudulandTransactions', 'U') IS NOT NULL
    BEGIN
        DROP TABLE dwh_finance_db.dbo.FraudulandTransactions;

        PRINT 'Dropped existing FraudulandTransactions table.';
    END;

    /* Create the table */
    CREATE TABLE dwh_finance_db.dbo.FraudulandTransactions
    (
        CustomerID VARCHAR(50) NULL,
        Name VARCHAR(50) NULL,
        Country VARCHAR(50) NULL,
        AccountStatus VARCHAR(50) NULL,
        TransactionID VARCHAR(50) NULL,
        Amount VARCHAR(50) NULL,
        TransactionDate VARCHAR(50) NULL,
        Location VARCHAR(50) NULL
    );

    PRINT 'Created new FraudulandTransactions table.';

    /* Insert fraudulent transactions */
    INSERT INTO dwh_finance_db.dbo.FraudulandTransactions
    (
       [CustomerID],[Name],[Country],[AccountStatus],[TransactionID],[Amount],
[TransactionDate],[Location]
    )

    SELECT DISTINCT
      [CustomerID],[Name],[Country],[AccountStatus],[TransactionID],[Amount],
[TransactionDate],[Location]
    FROM dwh_finance_db.dbo.FlaggedTransactions
    WHERE AccountStatus = 'Suspended'
       OR Amount > 5000
       OR Location <> Country;

    PRINT 'Inserted fraudulent transaction data.';

    /* Uncomment to verify results */
    -- SELECT * FROM dwh_finance_db.dbo.FraudulandTransactions;

    PRINT 'FraudulandTransactions table creation completed successfully!';

END;
GO
