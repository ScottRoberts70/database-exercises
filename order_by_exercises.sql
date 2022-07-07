USE employees;
SELECT *
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
ORDER BY last_name, first_name;

SELECT *
FROM employees
WHERE last_name LIKE 'E%';

SELECT *
FROM employees
WHERE last_name LIKE '%q%';

SELECT *
FROM employees
WHERE gender = 'M' AND first_name IN ('Irena', 'Vidya', 'Maya')
   OR 'Maya';

SELECT *
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;

SELECT *
FROM employees
WHERE last_name LIKE '%E%'
ORDER BY emp_no DESC;

SELECT DISTINCT *
FROM employees
WHERE last_name NOT LIKE '%qu%'
  AND last_name LIKE '%q%';


