/*Seniors with income of above national average*/

USE census;

CREATE VIEW Senior_Income AS
SELECT respondent_id, respondent_age, individual_income, income_id
FROM income JOIN respondents USING(income_id)
WHERE respondent_age > 55 
AND individual_income > 
(SELECT AVG(individual_income)
FROM income)
ORDER BY individual_income DESC;


/*Average income of collage graduate with Bachelor degree*/

USE census;
CREATE VIEW Bachelor_Average_Individual_Income AS
SELECT AVG(individual_income) AS 'Average Individual Income'
FROM respondents AS r
JOIN income AS i
ON i.income_id =r.income_id
JOIN education AS e
ON r.education_id = e.education_id
WHERE individual_highest_educ="Bachelors" ;

/*Average household size for people with below average income*/


USE census;
CREATE VIEW Household_Below_Average AS
SELECT AVG(family_count) AS 'Average Family Count'
FROM respondents AS r
JOIN housing AS h
ON r.house_id=h.house_id
JOIN income AS i
ON r.income_id =i.income_id
WHERE individual_income< '196280.97866666672';

/*Average age of people who have obtained a Masters Degree*/

USE census;
CREATE VIEW Average_Age_For_Masters AS
SELECT AVG(respondent_age) AS 'Average Respondent age'
FROM respondents AS r
JOIN education AS e
ON r.education_id = e.education_id
WHERE individual_highest_educ="Masters" ;

/*House Type of respondents under average respondent age*/

USE census;
Create VIEW HOUSETYPE AS
SELECT respondent_age, house_id, house_type
FROM housing JOIN respondents USING(house_id)
WHERE house_type = 'Rental'
OR house_type = 'Sole Ownership'
AND respondent_age <
(SELECT AVG(respondent_age)
FROM respondents)
ORDER BY respondent_age DESC;