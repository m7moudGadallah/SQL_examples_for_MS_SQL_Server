/* Insert data into categories table */
INSERT INTO production.categories (category_id, category_name) VALUES (1, 'Mountain Bikes');
INSERT INTO production.categories (category_id, category_name) VALUES (2, 'Road Bikes');
INSERT INTO production.categories (category_id, category_name) VALUES (3, 'Touring Bikes');
INSERT INTO production.categories (category_id, category_name) VALUES (4, 'Hybrid Bikes');
INSERT INTO production.categories (category_id, category_name) VALUES (5, 'Electric Bikes');
GO

/* Insert data into brands table */
INSERT INTO production.brands (brand_id, brand_name) VALUES (1, 'Trek');
INSERT INTO production.brands (brand_id, brand_name) VALUES (2, 'Giant');
INSERT INTO production.brands (brand_id, brand_name) VALUES (3, 'Specialized');
INSERT INTO production.brands (brand_id, brand_name) VALUES (4, 'Cannondale');
INSERT INTO production.brands (brand_id, brand_name) VALUES (5, 'Scott');
GO

/* Insert data into products table */
INSERT INTO production.products (product_id, product_name, brand_id, category_id, model_year, list_price) 
    VALUES (1, 'Fuel EX 9.9', 1, 1, '2021', 7999.99);
INSERT INTO production.products (product_id, product_name, brand_id, category_id, model_year, list_price) 
    VALUES (2, 'Trance X Pro 29 3', 2, 1, '2021', 5499.99);
INSERT INTO production.products (product_id, product_name, brand_id, category_id, model_year, list_price) 
    VALUES (3, 'Roubaix Sport', 3, 2, '2020', 2999.99);
INSERT INTO production.products (product_id, product_name, brand_id, category_id, model_year, list_price) 
    VALUES (4, 'Synapse Carbon Disc', 4, 3, '2021', 2399.99);
INSERT INTO production.products (product_id, product_name, brand_id, category_id, model_year, list_price) 
    VALUES (5, 'Quick CX 3', 5, 4, '2021', 899.99);
INSERT INTO production.products (product_id, product_name, brand_id, category_id, model_year, list_price) 
    VALUES (6, 'Vado SL 5.0 EQ', 1, 5, '2021', 3799.99);
GO

/* Insert data into stocks table */
INSERT INTO production.stocks (store_id, product_id, quantity) VALUES (1, 1, 10);
INSERT INTO production.stocks (store_id, product_id, quantity) VALUES (1, 2, 5);
INSERT INTO production.stocks (store_id, product_id, quantity) VALUES (2, 3, 8);
INSERT INTO production.stocks (store_id, product_id, quantity) VALUES (2, 4, 12);
INSERT INTO production.stocks (store_id, product_id, quantity) VALUES (3, 5, 15);
INSERT INTO production.stocks (store_id, product_id, quantity) VALUES (3, 6, 3);
GO

/* Insert data into customers table */
INSERT INTO sales.customers (customer_id, first_name, last_name, phone, email, street, city, state, zip_code) 
	VALUES (1, 'John', 'Doe', '555-555-5555', 'johndoe@email.com', '123 Main St.', 'Anytown', 'CA', '12345');
INSERT INTO sales.customers (customer_id, first_name, last_name, phone, email, street, city, state, zip_code)
	VALUES (2, 'Jane', 'Smith', '555-555-5595', 'janesmith@email.com', '456 Elm St.', 'Othertown', 'NY', '67890');
GO

/* Insert data into stores table */
INSERT INTO sales.stores (store_name, phone, email, street, city, state, zip_code) 
	VALUES ('BikeStore East', '555-555-5555', 'east@store.com', '789 Oak St.', 'Anytown', 'CA', '12345');
INSERT INTO sales.stores (store_name, phone, email, street, city, state, zip_code)
	VALUES ('BikeStore West', '555-555-5556', 'west@store.com', '101 Main St.', 'Othertown', 'NY', '67890');
INSERT INTO sales.stores (store_name, phone, email, street, city, state, zip_code) 
	VALUES ('BikeStore North', '555-555-5557', 'north@store.com', '555 Pine St.', 'Somewhere', 'TX', '45678');
GO

/* Insert data into staffs table */
INSERT INTO sales.staffs (first_name, last_name, email, phone, active, store_id, manager_id) 
	VALUES ('Bob', 'Smith', 'bsmith@store.com', '555-555-5555', 'yes', 1, NULL);
INSERT INTO sales.staffs (first_name, last_name, email, phone, active, store_id, manager_id) 
	VALUES ('Alice', 'Jones', 'ajones@store.com', '555-555-5555', 'yes', 1, 1);
INSERT INTO sales.staffs (first_name, last_name, email, phone, active, store_id, manager_id) 
	VALUES ('Mike', 'Brown', 'mbrown@store.com', '555-555-5555', 'yes', 2, NULL);
INSERT INTO sales.staffs (first_name, last_name, email, phone, active, store_id, manager_id) 
	VALUES ('Emma', 'Davis', 'edavis@store.com', '555-555-5555', 'yes', 2, 3);
GO

/* Insert data into orders table */
INSERT INTO sales.orders (customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id) 
	VALUES (1, 2, '2022-04-01', '2022-04-10', '2022-04-05', 1, 1);
INSERT INTO sales.orders (customer_id, order_status, order_date, required_date, shipped_date, store_id, staff_id) 
	VALUES (2, 1, '2022-04-05', '2022-04-15', NULL, 2, 3);
GO

/* Insert data into order_items table */
INSERT INTO sales.order_items (order_id, item_id, product_id, quantity_id, list_price, discount) 
	VALUES (1, 1, 1, 2, 7999.99, NULL);
INSERT INTO sales.order_items (order_id, item_id, product_id, quantity_id, list_price, discount) 
	VALUES (1, 2, 2, 1, 5499.99, NULL);
INSERT INTO sales.order_items (order_id, item_id, product_id, quantity_id, list_price, discount) 
	VALUES (2, 3, 3, 1, 2999.99, NULL);
INSERT INTO sales.order_items (order_id, item_id, product_id, quantity_id, list_price, discount) 
	VALUES (2, 4, 4, 2, 2399.99, NULL);
INSERT INTO sales.order_items (order_id, item_id, product_id, quantity_id, list_price, discount) 
	VALUES (2, 5, 5, 2, 899.99, NULL);
GO
