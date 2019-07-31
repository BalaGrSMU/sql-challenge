--List the manager of each department with the following information: 
--department number, department name, 
--the manager's employee number, last name, first name, and
--start and end employment dates

SELECT 
d.dept_no as Department_Number,
d.dept_name as Department_Name,
dm.emp_no as Manager_Employeeno,
e.last_name as Manager_Lastname,
e.first_name as Manager_Firstname,
to_char(s."from_date",'MM/DD/YYYY') as Start_employment_date,
to_char(s."to_date",'MM/DD/YYYY')  as End_employment_date
from
departments d
JOIN department_managers dm ON d.dept_no = dm.dept_no
JOIN employees e ON dm.emp_no = e.emp_no
JOIN salaries s ON e.emp_no = s.emp_no
ORDER BY d.dept_no
LIMIT 10
