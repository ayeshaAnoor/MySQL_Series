-- Limit & Aliasing

-- **************************************************************************************************** --

-- ------------------------------------------- Limit ------------------------------
SELECT *
FROM parks_and_recreation.employee_demographics
ORDER BY age 
LIMIT 4, 2
;

SELECT *
FROM parks_and_recreation.employee_salary
ORDER By salary DESC
LIMIT 5
;

-- ------------------------------------ Aliasing --------------------------------

SELECT occupation, AVG(salary) AS avg_sal
FROM parks_and_recreation.employee_salary
GROUP BY occupation
HAVING avg_sal >= 50000
ORDER By avg_sal DESC
;

SELECT gender, MAX(age) AS max_age, COUNT(employee_id) AS total
FROM parks_and_recreation.employee_demographics
GROUP BY gender
#HAVING max_age >= 50
#HAVING total >= 1
ORDER BY max_age DESC
;

SELECT occupation AS designation
FROM parks_and_recreation.employee_salary
;

SELECT * 
FROM employee_demographics AS e_demographics
;


