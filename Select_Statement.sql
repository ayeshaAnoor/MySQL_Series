
#	SELECT Statement
#	SELECT DISTINCT Statement

-- ************************************************************************************* --

-- ---------------------------------- SELECT ---------------------------------------- --

SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT first_name, last_name, gender, age, (age + 10) * 10
FROM parks_and_recreation.employee_demographics
;

SELECT *
FROM world.country
;

SELECT code, name, Population, HeadOfState
FROM world.country
;

-- ------------------------------- SELECT DISTINCT ---------------------------------------- --

SELECT DISTINCT  age, gender
FROM parks_and_recreation.employee_demographics
;

SELECT DISTINCT  Continent, region
FROM world.country
;



