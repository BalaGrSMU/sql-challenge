SELECT 
emp_no as Employee_no,
first_name as First_Name,
last_name as Last_Name,
to_char("hire_date",'MM/DD/YYYY') as Hire_Date
FROM
employees
WHERE EXTRACT(year FROM "hire_date")=1986
ORDER BY hire_date ASC
LIMIT 10