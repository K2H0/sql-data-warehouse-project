/*
-------------------------------------------------------------------------------
Create Database and Schemas
-------------------------------------------------------------------------------
Scripts Purpose:
       This script creates a new database named 'DataWarehouse' after checking if it already exits.
       If the database exists, it is dropped and recreated. Additionally, the scripts sets up three schemas within the database: 'bronze', 'silver', and 'gold'.

Warning:
   Running this script will drop the entire 'DataWarehouse' database if it exists.
   All data in database will permanently deleted. Proceed with caution and ensure you have proper backups before running this script.
*/

USE master;
GO 

-- Drop and recreate the 'DataWarehouse' database
IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse')
BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
END;
GO
-- Create Database 'DataWarehouse'
CREATE DATABASE DataWarehouse;

USE DataWarehouse;

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
