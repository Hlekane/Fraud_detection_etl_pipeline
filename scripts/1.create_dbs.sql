/*Create stg_finance_db*/
IF DB_ID ('stg_finance_db') IS NULL begin create Database stg_finance_db;


END;


GO
/* Create dwh_finance_db*/
IF DB_ID ('dwh_finance_db') IS NULL begin create Database dwh_finance_db;


END;


GO