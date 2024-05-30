#	WHERE CLAUSE + Relational & Logical Operators
#  	ORDER BY Keyword
#  	LIKE Statement & Wildcards(%, _)
#  	LIKE Statement with (AND, OR, NOT)

-- ********************************************************************************************** --

-- ----------------------WHERE CLAUSE + Relational Operators -----------------------------------

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name = 'Tom'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender != 'Male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date >= '1962-08-28'
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary >= 50000
;

SELECT Name, IndepYear, Population
FROM world.country
WHERE population <= 300000
; 

SELECT CountryCode, Language
FROM world.countrylanguage
WHERE Language != 'english'
; 

SELECT CountryCode, Language
FROM world.countrylanguage
WHERE Language = 'english'
; 

#  -------------------------------------- WHERE CLAUSE + Logical(AND, OR, NOT) Operators---------------------------------

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date >= '1987-03-04'
AND gender = 'Male'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE age > 40
OR gender = 'Female'
;

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE (first_name = 'Donna' AND age >= 46)
OR gender = 'Female'
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE NOT salary = 55000
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE salary NOT BETWEEN 50000 AND 70000
;

SELECT *
FROM parks_and_recreation.employee_salary
WHERE dept_id NOT IN (1, 3)
;

#  --------------------------------------ORDER BY & GROUP BY-----------------------------------

SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY last_name DESC
;

SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY dept_id ASC
;

SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY first_name, dept_id
;

SELECT *
FROM parks_and_recreation.employee_salary
ORDER BY salary
;

SELECT dept_id, AVG(salary), MAX(salary), MIN(salary), COUNT(salary), SUM(salary)
FROM parks_and_recreation.employee_salary
GROUP BY dept_id
ORDER BY SUM(salary), MIN(salary) ASC
;

SELECT occupation, MAX(salary)
FROM parks_and_recreation.employee_salary
GROUP BY occupation
;

SELECT salary, COUNT(employee_id)
FROM parks_and_recreation.employee_salary
GROUP BY salary
ORDER BY COUNT(employee_id) DESC
;

SELECT * 
FROM parks_and_recreation.employee_salary
;




#  ------------------LIKE STATEMENT------------------
#  ------------------LIKE STATEMENt uses two Wildcards as ( %, _ )------------------

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE 'd%';

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE '%on%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE '%07%';


SELECT *
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%r';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE last_name LIKE 'l%e';

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name LIKE 'b__';



SELECT *
FROM parks_and_recreation.employee_demographics
WHERE birth_date LIKE 'o___%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE last_name LIKE '%b_oo_%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE first_name LIKE 'a%' OR birth_date LIKE '1988%';

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'female' AND (first_name LIKE 'L%' OR first_name LIKE 'A%');

SELECT *
FROM parks_and_recreation.employee_demographics
WHERE gender = 'female' OR first_name LIKE 'L%' OR birth_date LIKE '1977%';

SELECT *
FROM parks_and_recreation.employee_salary
WHERE first_name NOT LIKE 'b__';



