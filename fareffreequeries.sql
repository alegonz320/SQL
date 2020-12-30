USE farefree;
SELECT DISTINCT agency_state, COUNT(fare_free) AS 'Number of Agencies',
population_total, AVG(costper_passengerper_mode) AS 'Average Cost Per Passenger',
AVG(costper_hourper_mode) AS 'Average Cost Per Hour',
AVG(total_operating_expensesper_mode) AS 'Average Total Operating Expenses'
FROM agencyinfo JOIN agencymode
USING(row_id)
WHERE fare_free = 'Partial'
GROUP BY agency_state
ORDER BY agency_state;