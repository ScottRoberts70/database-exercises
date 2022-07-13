USE employees;

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01';

# Find the name of all departments currently managed by women.

SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as dm
              ON dm.emp_no = e.emp_no
         JOIN departments as d
              ON d.dept_no = dm.dept_no
WHERE dm.to_date = '9999-01-01'
  AND e.gender = 'f';

# Find the current titles of employees currently working in the Customer Service department.
SELECT titles.title AS 'Title', COUNT(de.emp_no) AS 'TOTAL'
FROM titles
         JOIN dept_emp as de
              ON titles.emp_no = de.emp_no
         JOIN departments as d
              ON de.dept_no = d.dept_no
WHERE titles.to_date = '9999-01-01'
  AND de.to_date = '9999-01-01'
  AND d.dept_name = 'Customer Service'
GROUP BY titles.title;

SELECT d.dept_name AS 'Department Name',
       CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager',
       s.salary AS 'Salary'
FROM departments as d
         JOIN dept_manager as dm
              ON d.dept_no = dm.dept_no
         JOIN employees as e
              ON dm.emp_no = e.emp_no
         JOIN salaries as s
              ON e.emp_no = s.emp_no
WHERE dm.to_date = '9999-01-01'
  AND s.to_date = '9999-01-01';

SELECT CONCAT(e.first_name, ' ', e.last_name) AS 'Employee',
       d.dept_name AS 'Department',
       CONCAT(managers.first_name, ' ', managers.last_name) AS 'Manager'
FROM employees as e
         JOIN dept_emp de
              ON e.emp_no = de.emp_no
         JOIN departments d
              ON de.dept_no = d.dept_no
         JOIN dept_manager dm
              ON d.dept_no = dm.dept_no
         JOIN employees AS managers ON managers.emp_no = dm.emp_no
WHERE de.to_date = '9999-01-01'
  AND dm.to_date = '9999-01-01';
