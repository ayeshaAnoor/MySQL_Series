-- -------------------- JOINS -------------------------
#	Inner Joins with Aliases
#	Outer Join with (Left & Right)

-- **************************************************************************************************** --


SELECT *
FROM parks_and_recreation.employee_demographics
;

SELECT *
FROM parks_and_recreation.employee_salary
;

-- -------------------------------------------- Inner Join -------------------------------------

#	We used the INNER JOIN with Aliases 
#	(INNER) JOIN: Returns records that have matching values in both tables 

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;
    
SELECT dem.employee_id, age, salary AS sal
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;
    
-- ---------------------- Outer Join with (Left, Right & Full) ------------------

#	LEFT (OUTER) JOIN: Returns all records from the left table, and the matched records from the right table   
#	RIGHT (OUTER) JOIN: Returns all records from the right table, and the matched records from the left table   
#	FULL (OUTER) JOIN: Returns all records when there is a match in either left or right table   

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
LEFT JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;
    
SELECT *
FROM parks_and_recreation.employee_demographics AS dem
RIGHT JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
    ;


-- ---------------------------------------- Self Join -------------------------------------

SELECT emp1.employee_id AS emp_gifts,
emp1.first_name AS first_name_gifts,
emp1.last_name AS last_name_gifts,
emp2.employee_id AS emp_id,
emp2.first_name AS emp_first_name,
emp2.last_name AS emp_last_name
FROM parks_and_recreation.employee_salary AS emp1
JOIN parks_and_recreation.employee_salary AS emp2
	ON emp1.employee_id + 1 = emp2.employee_id
    ;

-- ---------------------- Joining MUltiple Tables ------------------

SELECT *
FROM parks_and_recreation.employee_demographics AS dem
INNER JOIN parks_and_recreation.employee_salary AS sal
	ON dem.employee_id = sal.employee_id
INNER JOIN parks_and_recreation.parks_departments AS pd
	ON sal.dept_id = pd.department_id
    ;
    

SELECT *
FROM parks_and_recreation.parks_departments
;








