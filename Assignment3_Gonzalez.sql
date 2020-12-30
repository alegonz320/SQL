USE my_guitar_shop;
SELECT DISTINCT(category_name), ROUND(AVG(list_price), 2) AS avg_list_price, MAX(discount_percent) AS max_discount, 
COUNT(product_name) AS num_products, COUNT(product_id) AS num_purchased
FROM categories JOIN products
USING(category_id)
GROUP BY category_name WITH ROLLUP;

use my_guitar_shop;
select concat(last_name, ', ', first_name) as customer_name,
count(order_id) as num_orders,
count(item_id) as num_items,
max(item_price) as most_expensive_item,
sum(item_price) as order_total
from customers join order_items
group by customer_id;

SELECT product_name, COUNT(product_id) AS num_customers, 
COUNT(item_id) AS num_items, list_price AS order_total
FROM products
JOIN order_items USING (product_id)
GROUP BY product_name
ORDER BY order_total DESC;