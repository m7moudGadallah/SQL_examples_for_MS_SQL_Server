USE BikeStore;
Go

/* generate report that have customer_id & customer_full_name & email */
SELECT 
	customer_id,
	first_name + ' ' + last_name AS customer_full_name,
	email
FROM 
	sales.customers
Where
	customer_id between 1 and 2;
Go


/* generate report that contains all products of brand_id = 1 */
SELECT 
	product_id,
	product_name,
	model_year,
	list_price
FROM
	production.products
WHERE
	brand_id = 1;
GO

/* generate report that contains all products of brand_id = 2 or brand_id = 5 */
SELECT
	*
FROM
	production.products
WHERE
	brand_id = 2 or brand_id = 5;
GO

/* generate report that contains all products of brand_id = 3, 4, 5 */
SELECT
	*
FROM
	production.products
WHERE
	brand_id between 3 and 5;
GO

/* or we can use this */
SELECT
	*
FROM
	production.products
WHERE
	brand_id in (3, 4, 5);
GO


/* generate report that contains all products of brand_id = 2, 4, 5 */
SELECT
	*
FROM	
	production.products
WHERE
	(brand_id between 2 and 6) and (brand_id != 3) ;
GO


/* get all products starts with 'f' */
SELECT 
	*
FROM
	production.products
WHERE
	product_name LIKE 'F%';
GO