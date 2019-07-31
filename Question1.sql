--List the following details of each employee:
--employee number, last name, first name, gender, and salary
SELECT
e.emp_no as employee_number,
e.last_name as last_name,
e.first_name as first_name,
e.gender as gender,
s.salary as salary
FROM
employees e
JOIN salaries s 
ON e.emp_no = s.emp_no
ORDER BY e.emp_no ASC
LIMIT 10