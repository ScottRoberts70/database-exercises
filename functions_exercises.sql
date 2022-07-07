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

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
   OR last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT CONCAT(first_name, ' ', last_name)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%e'
ORDER BY emp_no DESC;

SELECT DISTINCT *
FROM employees
WHERE last_name NOT LIKE '%qu%'
  AND last_name LIKE '%q%';

SELECT * FROM employees
WHERE month(birth_date) = 12
AND day(birth_date) = 25;

SELECT datediff(now(), hire_date) FROM employees
WHERE year(hire_date) BETWEEN 1990 AND 1999
AND month(birth_date) = 12
AND day(birth_date) = 25
ORDER BY hire_date, birth_date DESC;




