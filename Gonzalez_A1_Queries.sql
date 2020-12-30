USE ap;
SELECT CONCAT(vendor_contact_first_name, " ", vendor_contact_last_name, " - ", vendor_name) 
AS 'Vendor', 
CONCAT("Phone #: ", vendor_phone) AS 'Vendor Contact', 
CONCAT("City: ", vendor_city, ", State:  " , vendor_state)
AS 'Vendor Location'
FROM vendors 
WHERE vendor_contact_last_name > "B" AND vendor_contact_last_name < "D"
ORDER BY vendor_contact_last_name;

USE om;
SELECT order_id, CONCAT(customer_last_name, ', ', customer_first_name) 
AS 'customer_name', REPLACE(customer_fax, 'NULL', 'No Fax Number') AS customer_fax, order_date
FROM orders o
JOIN customers c
ON o.customer_id = c.customer_id
ORDER BY customer_fax, order_id;

USE ap;
SELECT vendor_name AS 'Vendor Name', CONCAT(vendor_contact_first_name, " ", vendor_contact_last_name)
AS 'Vendor Contact Name', invoice_total AS 'Invoice Total'
FROM invoices i LEFT JOIN vendors v
ON i.vendor_id = v.vendor_id
WHERE invoice_total IS NOT NULL
ORDER BY vendor_name;

USE ap;
SELECT account_number 
AS 'Account Number', line_item_description 
AS 'Line Item Description', 
vendor_name 
AS 'Vendor Name', 
CONCAT(vendor_city, ", ", vendor_state) 
AS 'Vendor City/State'
FROM vendors v
LEFT JOIN invoice_line_items i ON v.default_account_number = i.account_number
WHERE vendor_state > 'H' AND vendor_state < 'J' AND line_item_description IS NOT NULL
ORDER BY vendor_state, vendor_name, line_item_description, default_account_number






