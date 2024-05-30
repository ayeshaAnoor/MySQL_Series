-- --------------------------------------------- Strings Funtions -----------------------------------------
#	LENGTH()
#	UPPER()
#	LOWER()
#	TRIM()
#	SUBSTRING()
#	REPLACE()
#	LOCATE()
#	CONCAT()

-- **************************************************************************************************** --

-- -------------------------------- LENGTH() ----------------------------------

SELECT first_name, LENGTH(first_name) AS 'Length'
FROM parks_and_recreation.employee_demographics
ORDER BY 2
;
-- -------------------------------- UPPER() ----------------------------------

SELECT first_name, UPPER(first_name) AS 'UPPER_CASE'
FROM parks_and_recreation.employee_demographics
;
-- -------------------------------- LOWER() ----------------------------------

SELECT first_name, LOWER(first_name) AS 'lower_case'
FROM parks_and_recreation.employee_demographics
;

-- -------------------------------- TRIM() ----------------------------------
# TRIM LEFT & TRIM RIGHT works in the associates directions to remove the spaces as LTRIM & RTRIM

SELECT TRIM('     flower              ') AS 'Trimmed'
;
SELECT LTRIM('     flower              ') AS 'Trimmed'
;
SELECT RTRIM('               flower         ') AS 'Trimmed'
;

-- -------------------------------- SUBSTRING() ----------------------------------
# LEFT & RIGHT substring works in the associates directions to cut the specified length of the characters repectively

SELECT first_name, 
LEFT(first_name, 4) AS 'Left_Substring',
RIGHT(first_name, 4) AS 'Right_Substring',
SUBSTRING(first_name, 1, 3) AS 'First_Name',
SUBSTRING(birth_date, 6, 2) AS 'Birth_Month'
FROM parks_and_recreation.employee_demographics
;

-- -------------------------------- REPLACE() ----------------------------------

SELECT first_name, REPLACE(first_name, 'L', 'M') AS 'Replaced L with M'
FROM parks_and_recreation.employee_demographics
;

-- -------------------------------- LOCATE() ----------------------------------

SELECT last_name, LOCATE('o', last_name) AS 'Located At'
FROM parks_and_recreation.employee_demographics
;

-- -------------------------------- CONCAT() ----------------------------------

SELECT first_name, last_name, 
CONCAT(first_name, ' ', last_name) AS 'Concatenated Name'
FROM parks_and_recreation.employee_demographics
;
