/*Creates the main database DatawarehouseAnalytics.

Drops the database if it already exists, ensuring a clean setup.*/


USE master
GO


--- Create database
IF EXISTS (SELECT 1 FROM sys.databases where name = DatawarehouseAnalytics)
BEGIN 
	ALTER DATABASE DatawarehouseAnalytics SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE DatawarehouseAnalytics
END;
GO

Create DATABASE DatawarehouseAnalytics
GO
