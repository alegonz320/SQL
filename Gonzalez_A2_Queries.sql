USE my_guitar_shop;

DROP TABLE IF EXISTS administrators_copy;
CREATE TABLE administrators_copy
SELECT* 
FROM administrators;

DROP TABLE IF EXISTS products_copy;
CREATE TABLE products_copy
SELECT*
FROM products;

INSERT INTO administrators_copy
VALUES (default, 'john@murach.com', '7a718fbd768d2378z511f8249b54897f940e9023',
'John', 'Doe');

INSERT INTO products_copy
VALUES
    (11, 4, 'p_125', 'Yamaha P-125', 
    'The Yamaha P-125 88-key weighted action digital piano has 
    a Graded Hammer Standard Action, 192-note Polyphony, 24
Sounds, Stereo Sound System, EQ, and Drum
Patterns/Virtual Accompaniment - Black', 
649.99, 25.00, now());

SET SQL_SAFE_UPDATES = 0;
UPDATE products_copy
SET list_price = 1200.00, discount_percent = 75.00
WHERE product_id = 11;
SET SQL_SAFE_UPDATES = 1;

SET SQL_SAFE_UPDATES = 0;
UPDATE addresses
SET disabled = 1
WHERE state = 'CA';
SET SQL_SAFE_UPDATES = 1;

SELECT a.customer_id AS 'Customer ID',
product_name AS 'Product Name',
product_id AS 'Product ID',
order_id AS 'Order ID',
(item_price - discount_amount + ship_amount +
tax_amount) AS 'Total Return Amount',
line1 AS 'Billing Address',
state AS 'Billing State'
FROM addresses a
JOIN orders v
ON a.address_id = v.billing_address_id
JOIN order_items
USING(order_id)
JOIN products
USING(product_id)
WHERE product_name = "Gibson Les Paul";
DELETE FROM order_items
WHERE order_id = 1 OR order_id = 4;
DELETE FROM orders
WHERE order_id = 1 OR order_id = 4;

SET SQL_SAFE_UPDATES = 1;
