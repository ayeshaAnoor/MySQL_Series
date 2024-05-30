#	INSERT INTO Statement
#	NULL Values 
#	UPDATE Statement
#	DELETE Statement

-- **************************************************************************************************** --

-- --------------------------------- INSERT INTO Statement -------------------------------

SELECT * 
FROM parks_and_recreation.employee_demographics
;

INSERT INTO employee_demographics(employee_id, first_name, last_name, age, gender, birth_date)
VALUES 
('15', 'Sarah', 'William', '32', 'Female', '1988-05-23'),
('16', 'Mona', 'Park', '45', 'Female', '1989-10-13'),
('17', 'Mario', 'Watson', '35', 'Male', '1990-09-18')
;

INSERT INTO employee_demographics(employee_id, first_name, last_name, gender)
VALUES ('14', 'Arthur', 'Jackson', 'Male')
;

SELECT * 
FROM parks_and_recreation.employee_salary
;

INSERT INTO employee_salary
Values('13', 'Harry', 'Potter', 'Actor', '20000', '4')
;

-- --------------------------------- NULL Values -------------------------------

SELECT first_name, last_name, gender
FROM parks_and_recreation.employee_demographics
WHERE age IS NULL And birth_date IS NULL
;

SELECT first_name, last_name, gender
FROM parks_and_recreation.employee_demographics
WHERE age IS NOT NULL And birth_date IS NOT NULL
;

-- -------------------------------- UPDATE Statement -------------------------------

UPDATE employee_demographics
SET first_name = 'Mason', last_name = 'Peter'
WHERE employee_id = 17
;

-- -------------------------------- DELETE Statement -----------------------------------

DELETE FROM employee_demographics
WHERE employee_id = 17
;

DELETE FROM employee_salary
WHERE first_name = 'Harry'
;





