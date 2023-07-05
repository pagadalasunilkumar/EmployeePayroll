CREATE DATABASE payroll_service;
USE payroll_service;


CREATE TABLE employee_payroll (
    id INT IDENTITY(1,1) PRIMARY KEY,
    name VARCHAR(50),
    salary DECIMAL(10,2),
    start_date DATE
);
USE payroll_service;

INSERT INTO employee_payroll (name, salary, start_date)
VALUES
    ('John Doe', 5000.00, '2023-01-01'),
    ('Jane Smith', 6000.00, '2022-12-15'),
    ('Michael Johnson', 4500.00, '2023-02-28');
USE payroll_service;

SELECT * FROM employee_payroll;
USE payroll_service;

ALTER TABLE employee_payroll
ADD gender CHAR(1) NULL;
USE payroll_service;

SELECT SUM(salary) AS total_salary_male
FROM employee_payroll
WHERE gender = 'M';
SELECT AVG(salary) AS average_salary_female
FROM employee_payroll
WHERE gender = 'F';
SELECT MIN(salary) AS min_salary_male
FROM employee_payroll
WHERE gender = 'M';
SELECT MAX(salary) AS max_salary_female
FROM employee_payroll
WHERE gender = 'F';
SELECT gender, COUNT(*) AS employee_count
FROM employee_payroll
GROUP BY gender;
