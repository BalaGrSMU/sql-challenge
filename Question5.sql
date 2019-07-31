--List all employees whose first name is "Hercules" and 
--last names begin with "B.

SELECT
emp_no as Employee_No,
first_name as First_Name,
last_name as Last_Name,
gender as Gender,
to_char("birth_date",'DD/MM/YYYY'),
to_char("hire_date",'DD/MM/YYYY')
FROM employees
WHERE 
first_name like'Hercules'
AND
last_name like'B%'
ORDER BY emp_no ASC