-- Retrieve 20 rows from the 'products' table starting from the 41st row (zero-based index).
SELECT * FROM products LIMIT 20 OFFSET 40;

-- Select specific columns from the 'products' table.
SELECT product_id, product_name, description, price, quantity FROM products;

-- Insert a new product record into the 'products' table with specific values for 'product_name', 'price', and 'quantity'.
INSERT INTO products (product_name, price, quantity)
    VALUES('uva griega', 1499.99, 50);

-- Update the 'quantity' and 'product_name' columns in the 'products' table where the 'product_name' is 'uva griega'.
UPDATE products SET quantity = 100, product_name='Uva griega'
WHERE product_name='uva griega';

-- Update the 'color' column to 'Morada' (Spanish for 'Purple') in the 'products' table where the 'product_id' is 46.
UPDATE products SET color='Morada'
WHERE product_id=46;

-- Update the 'manufacturer' column to 'Varios' (Spanish for 'Various') in the 'products' table where the 'product_id' is 46.
UPDATE products SET manufacturer='Varios'
WHERE product_id=46;

-- Insert a new product record into the 'products' table with specific values for 'product_name', 'price', and 'quantity'.
VALUES ('Fake product', 999.99, 99);

-- Delete the product with 'product_id' 47 from the 'products' table.
DELETE FROM products WHERE product_id=47;

-------------------------------------------------------------------------
-- Retrieve 20 rows from the 'products' table starting from the 41st row (zero-based index).
SELECT * FROM products LIMIT 20 OFFSET 40;
