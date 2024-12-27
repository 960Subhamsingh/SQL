-- View Sample Inventory Data

SELECT * FROM inventory;

-- The problems caused by null values

SELECT product_name, unit_price * (units_stock + units_order) AS 'inventory quantity'
FROM inventory;

-- Using the ISNULL() Function

SELECT product_name, unit_price * (units_stock + ISNULL(units_order, 0)) AS 'inventory quantity'
FROM inventory;

-- Using the COALESCE() Function

SELECT product_name, unit_price * (units_stock + COALESCE(units_order, 0)) AS 'inventory quantity'
FROM inventory;
