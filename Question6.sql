--List all employees in the Sales department, 
--including their employee number, last name, first name, and department name.

SELECT 
e.emp_no as Employee_Number,
e.last_name as Last_Name,
e.first_name as First_Name,
d.dept_name as Department_Name
from
employees e
JOIN department_employee de ON de.emp_no = e.emp_no
JOIN departments d ON d.dept_no = de.dept_no
WHERE
d.dept_name = 'Sales'
ORDER BY Employee_Number ASC
LIMIT 10
