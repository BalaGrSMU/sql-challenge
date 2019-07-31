DROP TABLE if exists departments CASCADE;
DROP TABLE if exists employees CASCADE;
DROP TABLE if exists department_employee CASCADE;
DROP TABLE if exists department_managers CASCADE;
DROP TABLE if exists salaries CASCADE;
DROP TABLE if exists titles CASCADE;

CREATE TABLE departments(
	dept_no VARCHAR(5) PRIMARY KEY,
	dept_name VARCHAR(25));

CREATE TABLE employees(
	emp_no INTEGER PRIMARY KEY,
	birth_date DATE,
	first_name VARCHAR(40),
	last_name VARCHAR(40),
	gender VARCHAR(2),
	hire_date DATE);

CREATE TABLE department_employee(
	emp_no INTEGER,
	dept_no VARCHAR(5),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
CREATE TABLE department_managers(
	dept_no VARCHAR(5),
	emp_no INTEGER,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
CREATE TABLE salaries(
	emp_no INTEGER,
	salary INTEGER,
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));
	
CREATE TABLE titles(
	emp_no INTEGER,
	title VARCHAR(40),
	from_date DATE,
	to_date DATE,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no));