-- Query 1: Selecting specific columns from the 'products' table.
SELECT product_id, product_name, price, quantity FROM products;

-- Query 2: Selecting product name, quantity, and calculating the number of dozens and remaining units.
SELECT product_name, quantity, (quantity/12) as dozens, (quantity % 12) as no_unit_dozen from products;

-- Query 3: Selecting product name, quantity, calculating the number of dozens, remaining units, unit price, and dozen price.
SELECT
    product_name,
    quantity,
    (quantity/12) as dozens,
    (quantity % 12) as no_unit_dozen,
    price as unit_price,
    round(price * 12 - price) as dozen_price
    from products;

-- Query 4: Selecting product name, quantity, calculating the number of dozens, remaining units, unit price, and dozen price,
-- and filtering the results to include only products where the number of dozens is greater than or equal to 5.
SELECT
    product_name,
    quantity,
    (quantity/12) AS dozens,
    (quantity % 12) AS no_unit_dozen,
    price AS unit_price,
    round(price * 12 - price) AS dozen_price
    FROM products
    WHERE (quantity / 12) >= 5;

-- Query 5: Selecting product name, quantity, price, and calculating utility for products where the number of dozens is less than 5.
SELECT
	product_name,
	quantity,
	price,
	price * quantity as utility
	FROM products
	WHERE (quantity / 12) < 5;

-- Query 6: Selecting product details including utility calculations based on quantity and price for all products.
SELECT
	product_id,
	product_name,
	quantity,
	(quantity / 12) as dozens,
	(quantity % 12) as no_dozens,
	price,
	(price * 12 - price) as dozen_price,
	(price * quantity) as unit_utility,
	(
		(price * 12 - price) * (quantity / 12) -- Utility from full dozens
		+
		(quantity % 12 * price) -- Utility from remaining units
	) as dozen_utility
	FROM products;
