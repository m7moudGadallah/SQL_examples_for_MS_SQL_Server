USE BikeStore;
GO

/* update statements */

/* update customer `jone Smith`  phone number  by using id*/
UPDATE sales.customers
SET phone = '555-555-5596'
WHERE customer_id = 2;
GO

SELECT * FROM sales.customers;
GO

/* change staff Alice to be a manager and set Manager for Bob*/
UPDATE sales.staffs
SET manager_id = NULL
WHERE staff_id = 2;
GO

UPDATE sales.staffs
SET manager_id = 2
WHERE staff_id = 1;
GO

/* add Manager id for staff Mike with using first_name and staff_id and make Emma to be manager*/
UPDATE sales.staffs
SET manager_id = 3
WHERE staff_id = 3 and first_name = 'Mike';
GO

UPDATE sales.staffs
SET manager_id = NULL
WHERE staff_id = 4 and first_name = 'Emma';
GO

SELECT * FROM sales.staffs;
GO