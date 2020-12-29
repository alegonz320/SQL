USE ap;
CREATE OR REPLACE VIEW overdue_accounts 
AS SELECT vendor_name, terms_due_days,
(invoice_total - payment_total - credit_total) AS balance_due, 
(DATEDIFF(CAST("2014-09-02" AS DATE), invoice_date)-terms_due_days) AS days_overdue, 
(DATEDIFF(CAST("2014-09-02" AS DATE), invoice_date)) AS days_from_invoice
FROM vendors V
  JOIN invoices I ON V.vendor_id = I.vendor_id
  JOIN terms T ON T.terms_id = I.terms_id
WHERE invoice_total - payment_total - credit_total > 0
AND (DATEDIFF(CAST("2014-09-02" AS DATE), invoice_date)-terms_due_days) > 0
ORDER BY days_overdue DESC, vendor_name;

SELECT * FROM overdue_accounts;