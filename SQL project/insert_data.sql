/*Loads data from CSV files into the tables using BULK INSERT.
  Truncates tables before inserting to avoid duplicates.
  Populates dim_customers, dim_products, and fact_sales.*/

TRUNCATE TABLE gold.dim_customers
Go

BULK INSERT gold.dim_customers
FROM 'C:\Users\ASUS\Desktop\Sql\DatawarehouseAnalytics\gold.dim_customers.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
GO

TRUNCATE TABLE gold.dim_products
Go

BULK INSERT gold.dim_products
FROM 'C:\Users\ASUS\Desktop\Sql\DatawarehouseAnalytics\gold.dim_products.csv'
WITH(
	FIRSTROW = 2,
	FIELDTERMINATOR = ',',
	TABLOCK
);
Go

TRUNCATE TABLE gold.fact_sales
Go

BULK INSERT gold.fact_sales
FROM 'C:\Users\ASUS\Desktop\Sql\DatawarehouseAnalytics\gold.fact_sales.csv'
WITH(
	FIRSTROW =2,
	FIELDTERMINATOR =',',
	TABLOCK
);
Go

