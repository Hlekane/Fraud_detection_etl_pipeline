# Fraud Detection ETL Pipeline

A simple ETL project built with **SQL Server Integration Services (SSIS)** and **SQL Server Management Studio (SSMS)** to detect potentially fraudulent financial transactions using predefined business rules.

## Project Overview

Financial institutions process thousands of transactions every day, making manual fraud detection difficult. This project demonstrates how an ETL pipeline can automatically identify suspicious transactions and load them for further investigation.

The pipeline extracts customer and transaction data from CSV files, applies fraud detection rules, and stores flagged transactions in SQL Server for reporting and analysis.

## Technologies

* SQL Server
* SQL Server Integration Services (SSIS)
* SQL Server Management Studio (SSMS)
* CSV Files

## Data Sources

* `Customers.csv`
* `Transactions.csv`

## ETL Process

### Extract

* Load customer and transaction data from CSV files into SQL Server staging tables.

### Transform

Join customer and transaction data and apply the following fraud detection rules:

* Suspended customer account
* Transaction amount greater than **5000**
* Transaction location does not match the customer's registered country

### Load

* Insert all flagged transactions into the `FlaggedTransactions` table.

### Analyse

Run SQL queries to:

* Review flagged transactions
* Count flagged records
* Summarise fraud by rule, customer, or location

## Project Structure

```text
├── SSIS Packages/
├── SQL Scripts/
├── Data/
│   ├── Customers.csv
│   └── Transactions.csv
├── Documentation/
└── README.md
```

## Expected Outcome

The project produces a working ETL pipeline that automatically detects suspicious transactions and stores them for further investigation using SQL queries.

## Learning Objectives

This project demonstrates:

* Building an ETL pipeline with SSIS
* Loading data into SQL Server staging tables
* Applying business rules during data transformation
* Creating a simple fraud detection process using SQL
* Analysing results using SQL queries
