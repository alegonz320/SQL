USE ap;
CREATE TABLE `new_invoice_records` (
 `new_invoice_record_id` int(11) NOT NULL AUTO_INCREMENT,
 `new_invoice_record_text` varchar(255) DEFAULT NULL,
 `new_invoice_record_timestamp` datetime DEFAULT NULL,
 PRIMARY KEY (`new_invoice_record_id`)
) ENGINE=InnoDB;
-- Partial script for the trigger 'new_invoice_row'

DROP TRIGGER IF EXISTS new_invoice_row;

DELIMITER //
CREATE TRIGGER new_invoice_row
-- --> Add here the statement that will create a trigger 
-- --- with the name new_invoice_row
	AFTER INSERT ON invoices
    -- add here the name of the table 
	                -- that the trigger will watch for inserts
	FOR EACH ROW
	
BEGIN
	DECLARE invoice_id_var INT;
	DECLARE invoice_total_var DECIMAL (9,2);
    DECLARE vendor_id_var INT;
	-- --> declare here the variable that will catch and hold 
	-- -- the value for the vendor_id column in the newly-added row; 
	-- --- name the variable vendor_id_var; 	
	-- --- don't forget to declare its data type
	DECLARE vendor_name_var VARCHAR(30);

	SET invoice_id_var = NEW.invoice_id;
    SET invoice_total_var = NEW.invoice_total;
	-- --> set here the value of the variable invoice_total_var; 
	-- --- it should be equal to the newly-added invoice_total value; 	
	-- --- observe the other SET statements as examples
	SET vendor_id_var = NEW.vendor_id;
	SELECT vendor_name INTO vendor_name_var FROM vendors WHERE vendor_id = vendor_id_var;
	INSERT INTO new_invoice_records VALUES
    (invoice_id_var, CONCAT('You have added a new invoice from ', vendor_name_var, 
    ' with an invoice total of $', invoice_total_var), NOW());
 
	-- --> (add here the values that should be inserted into the 
	-- --- new_invoice_records table when the trigger executes;
	-- --- you will need a CONCAT() to generate the text value 
	-- --- that will go into the new_invoice_record_text column);
END//

DELIMITER ;
INSERT INTO invoices
 VALUES (118,34,'ZXA-080','2018-02-01',14092.59,0,0,3,'2018-03-01',
 NULL);
 SELECT * FROM new_invoice_records;
-- --> Test your code:
-- --- Run this INSERT query: 
-- --- INSERT INTO invoices VALUES (118,34,'ZXA-080','2018-02-01',14092.59,0,0,3,'2018-03-01', NULL);
-- --- Then run this SELECT query: SELECT * FROM new_invoice_records;
-- --- Do your see a row with the following values?
-- --- 
-- --- '118', 'You have added a new invoice from IBM with an invoice total of $14092.59', '2020-04-17 02:18:17'
-- --- 
-- --- If "Yes", you have built the trigger as required; 
-- --- if "No", keep on working on it.