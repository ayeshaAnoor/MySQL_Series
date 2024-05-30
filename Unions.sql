--  Unions 

-- **************************************************************************************************** --

SELECT employee_id, first_name, last_name
FROM parks_and_recreation.employee_demographics
UNION DISTINCT
SELECT employee_id, first_name, last_name 
FROM parks_and_recreation.employee_salary
;

SELECT employee_id, first_name, last_name, 'Old' AS Lable
FROM parks_and_recreation.employee_demographics
WHERE age >= 40 AND gender = 'Male'
UNION DISTINCT
SELECT employee_id, first_name, last_name, 'Old Woman' AS Lable
FROM parks_and_recreation.employee_demographics
WHERE age >= 40 AND gender = 'Female'
UNION DISTINCT
SELECT employee_id, first_name, last_name, 'Highly Paid Employee' AS Label
FROM parks_and_recreation.employee_salary
WHERE salary >= 90000
ORDER BY first_name, last_name
;





