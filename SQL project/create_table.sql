/*Defines the data warehouse tables:
1)dim_customers → customer details.
2)dim_products → product details.
3)fact_sales → transactional sales data.
Ensures old tables are dropped before recreating them.*/


IF OBJECT_ID('gold.dim_customers','U') IS NOT NULL
   DROP TABLE gold.dim_customers
CREATE TABLE gold.dim_customers(
	customer_key NVARCHAR(50),
	customer_id NVARCHAR(50),
	customer_number NVARCHAR(50),
	first_name NVARCHAR(60),
	last_name NVARCHAR(60),
	country NVARCHAR(60),
	marital_status NVARCHAR(60),
	gender NVARCHAR(60),
	birthdate DATE,
	create_date DATE,
);
GO

IF OBJECT_ID('gold.dim_products','U') IS NOT NULL
   DROP TABLE gold.dim_products
CREATE TABLE gold.dim_products(
	product_key NVARCHAR(50),
	product_id NVARCHAR(50),
	product_number NVARCHAR(50),
	product_name NVARCHAR(50),
	category_id NVARCHAR(50),
	category NVARCHAR(50),
	subcategory NVARCHAR(50),
	maintenance NVARCHAR(50),
	cost INT,
	product_line NVARCHAR(50),
	start_date DATE
);
GO

IF OBJECT_ID('gold.fact_sales','U') IS NOT NULL
   DROP TABLE gold.fact_sales
CREATE TABLE gold.fact_sales(
order_number NVARCHAR(50),
product_key NVARCHAR(50),
customer_key NVARCHAR(50),
order_date DATE,
shipping_date DATE,
due_date DATE,
sales_amount INT,
quantity INT,
price INT
);
GO
