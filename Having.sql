#	HAVING & WHERE

-- **************************************************************************************************** --

SELECT *
FROM parks_and_recreation.employee_salary
;

SELECT occupation, AVG(salary)
FROM parks_and_recreation.employee_salary
WHERE occupation LIKE '%manager%'
GROUP BY occupation
HAVING AVG(salary) > 50000
;


SELECT dept_id, MAX(salary), SUM(salary)
FROM parks_and_recreation.employee_salary
#WHERE occupation LIKE '%manager%'
GROUP BY dept_id
HAVING SUM(salary) > 90000
ORDER BY SUM(salary) DESC
;

SELECT *
FROM parks_and_recreation.employee_demographics
;


SELECT gender, AVG(age)
FROM parks_and_recreation.employee_demographics
GROUP BY gender
HAVING AVG(age) >= 30
ORDER BY AVG(age)
;

SELECT dept_id, COUNT(employee_id), MIN(salary)
FROM parks_and_recreation.employee_salary
GROUP BY dept_id
HAVING  MIN(salary) >= 50000
ORDER BY COUNT(employee_id) DESC
;