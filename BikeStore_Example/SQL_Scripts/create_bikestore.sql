/* creating BikeStore database */

USE master;
GO

CREATE DATABASE BikeStore;
GO


/* creating schemas */
USE BikeStore;
GO

/* sales */
CREATE SCHEMA sales;
GO

/* production */
CREATE SCHEMA production;
GO


/* construct schemas */

/* construct schemas */
USE BikeStore;
GO

/* create categories table */
CREATE TABLE production.categories (
	category_id INT,
	category_name VARCHAR(20),

	CONSTRAINT categories_pk PRIMARY KEY (category_id)
);
GO

/* create products table */
CREATE TABLE production.products (
	product_id INT,
	product_name VARCHAR(20),
	brand_id INT,
	category_id INT,
	model_year VARCHAR(4),
	list_price NUMERIC(7, 2),

	CONSTRAINT products_pk PRIMARY KEY (product_id)
);
GO

/* add relationship between products and categories */
ALTER TABLE production.products
ADD CONSTRAINT products_categories_fk FOREIGN KEY (category_id)
REFERENCES production.categories (category_id);
GO

/* create stocks table */
CREATE TABLE production.stocks (
	store_id INT,
	product_id INT,
	quantity INT,
	
	CONSTRAINT stocks_products_fk FOREIGN KEY (product_id)
	REFERENCES production.products (product_id)
);
GO

/* create brands table */
CREATE TABLE production.brands (
	brand_id INT,
	brand_name VARCHAR(20),

	CONSTRAINT brands_pk PRIMARY KEY (brand_id)
);
Go

/* add relationship between product and brands */
ALTER TABLE production.products
ADD CONSTRAINT products_brands_fk FOREIGN KEY (brand_id)
REFERENCES production.brands (brand_id);
GO


/* construct sales */

/* create customers table */
CREATE TABLE sales.customers (
	customer_id INT,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	phone VARCHAR(20),
	email VARCHAR(20) NOT NULL,
	street VARCHAR(20),
	city VARCHAR(20) NOT NULL,
	state VARCHAR(20),
	zip_code VARCHAR (10) NOT NULL,

	CONSTRAINT customers_pk PRIMARY KEY (customer_id)
);
GO

/* create staffs table */
CREATE TABLE sales.staffs (
	staff_id INT,
	first_name VARCHAR(20) NOT NULL,
	last_name VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL,
	phone VARCHAR(20),
	active VARCHAR(5),
	store_id INT,
	manager_id INT,

	CONSTRAINT staffs_pk PRIMARY KEY (staff_id),
	CONSTRAINT staffs_staffs_fk FOREIGN KEY (manager_id)
	REFERENCES sales.staffs (staff_id),
);
GO


/* create orders table */
CREATE TABLE sales.orders (
	order_id INT,
	customer_id INT,
	order_status VARCHAR(20) NOT NULL,
	order_date	DATE NOT NULL,
	required_date DATE NOT NULL,
	shipped_date DATE NOT NULL,
	store_id INT,
	staff_id INT,

	CONSTRAINT orders_pk PRIMARY KEY (order_id)
);
GO

/* create relationship between orders and customer */
ALTER TABLE sales.orders
ADD CONSTRAINT orders_customers_fk FOREIGN KEY (customer_id)
REFERENCES sales.customers (customer_id);
GO

/* create relationship between orders and staff */
ALTER TABLE sales.orders
ADD CONSTRAINT orders_staffs_fk FOREIGN KEY (staff_id)
REFERENCES sales.staffs (staff_id);
GO

/* create stores table */
CREATE TABLE sales.stores (
	store_id INT,
	store_name VARCHAR(20) NOT NULL,
	phone VARCHAR(20) NOT NULL,
	email VARCHAR(20) NOT NULL,
	street VARCHAR(20) NOT NULL,
	city VARCHAR(20) NOT NULL,
	state VARCHAR(20) NOT NULL,
	zip_code VARCHAR(20) NOT NULL,

	CONSTRAINT stores_pk PRIMARY KEY (store_id)
);
GO

/* add relationship between orders and stores */
ALTER TABLE sales.orders
ADD CONSTRAINT orders_stores_fk FOREIGN KEY (store_id)
REFERENCES sales.stores (store_id);
GO

/* add relationship between staffs and stores */
ALTER TABLE sales.staffs
ADD CONSTRAINT staffs_stores_fk FOREIGN kEY (store_id)
REFERENCES sales.stores (store_id);
GO

/* add relationship between stocks and stores */
ALTER TABLE production.stocks
ADD CONSTRAINT stocks_stores_fk FOREIGN kEY (store_id)
REFERENCES sales.stores (store_id);
GO

/* create order_items table */
CREATE TABLE sales.order_items (
	order_id INT,
	item_id INT,
	product_id INT,
	quantity_id INT,
	list_price NUMERIC(7, 2) NOT NULL,
	discount VARCHAR(2)

	CONSTRAINT order_items_pk PRIMARY KEY (item_id)
);
GO

/* add relationship between order_items and orders */
ALTER TABLE sales.order_items
ADD CONSTRAINT order_items_orders_fk FOREIGN KEY (order_id)
REFERENCES sales.orders (order_id);
GO

/* add relationship between order_items and products */
ALTER TABLE sales.order_items
ADD CONSTRAINT order_items_products_fk FOREIGN KEY (product_id)
REFERENCES production.products (product_id);
GO