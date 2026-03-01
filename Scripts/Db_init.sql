/*
This file is the starting point where we initialize our database , create schemas.
our DataWarehouse follows *Medallion Architecture* thats why the schemas name is ..
Bronze, Silver and Gold.
*/

-- Use master to create database
USE master;
GO

-- Create database only if it does not exist
IF NOT EXISTS (
    SELECT 1 
    FROM sys.databases 
    WHERE name = 'DataWarehouse'
)
BEGIN
    CREATE DATABASE DataWarehouse;
END
GO

-- Switch to DataWarehouse
USE DataWarehouse;
GO

-- Create schemas
CREATE SCHEMA bronze;  -- Data loaded as it is
GO

CREATE SCHEMA silver;  -- Data got transformed
GO

CREATE SCHEMA gold;    -- Data is ready for analytics
GO
