-- Partial script for the stored procedure 'owed_to_state_vendors'

-- HINT: This stored procedure is built around a SELECT query.
-- You may want to first build the query, and then plug it into the code below.
-- See the hints below, right after the BEGIN line, for help with the SELECT query.
USE ap;
DROP PROCEDURE IF EXISTS owed_to_state_vendors;

DELIMITER //

-- --> The CREATE statement goes here. Remember to add the parameter 
-- --- (in parentheses); its data type should be VARCHAR(50)

CREATE PROCEDURE owed_to_state_vendors (IN vendor_state varchar(50))


BEGIN
-- --> You need to add a SELECT query here to retrieve the vendor_names 
-- --- from the given state and the total amount owed to each of them.
-- --- In the query, you will need to JOIN two tables,
-- --- and you will need a filtering condition that will keep only the vendors 
-- --- from the given state, which was passed as the parameter value,
-- --- and you will need to aggregate the total invoice amounts for each vendor, 
-- --- and you will need a filtering condition that will keep only the vendors 
-- --- whose invoice totals are greater than zero.
SELECT vendors.vendor_id, vendor_name, (invoice_total - payment_total - credit_total)
AS balance_due
FROM vendors 
LEFT JOIN invoices 
ON vendors.vendor_id = invoices.vendor_id
WHERE invoice_total - payment_total - credit_total > 0
ORDER BY vendor_name;

END //

DELIMITER ;
CALL owed_to_state_vendors('CA'); 
-- --> TEST YOUR CODE:
-- --- Run this statement: CALL owed_to_state_vendors('CA');
-- --- Do your see two rows with the following values?
-- --- 
-- --- 'Blue Cross', '224.00'
-- --- 'Ford Motor Credit Company', '503.20'
-- --- 
-- --- If "Yes", you have built the stored procedure as required; 
-- --- if "No", continue working on it.