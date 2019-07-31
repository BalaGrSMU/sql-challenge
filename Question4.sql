--List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.

SELECT
e.emp_no as Employee_Number,
e.last_name as Last_Name,
e.first_name as First_Name,
d.dept_name as Department_Name
FROM
employees e
JOIN department_employee dm on dm.emp_no = e.emp_no
JOIN departments d on dm.dept_no = d.dept_no
ORDER BY e.emp_no ASC
LIMIT 10