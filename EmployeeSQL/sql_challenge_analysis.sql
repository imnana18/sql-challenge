-- List the employee number, last name, first name, sex, and salary of each employee.
SELECT 
	employee.emp_no as "Employee #", 
	last_name as "Last Name", 
	first_name as "First Name", 
	sex as "Sex",
	salary as "Salary"
FROM employee, salaries
WHERE salaries.emp_no = employee.emp_no 

-- List the first name, last name, and hire date for the employees who were hired in 1986.
SELECT 
	first_name as "First Name",
	last_name as "Last Name",
	hire_date as "Hire Date"
FROM employee
WHERE EXTRACT(YEAR FROM hire_date) = 1986;

-- List the manager of each department along with their department number, department name, employee number, last name, and first name.
SELECT
	m.dept_no as "Dept. #",
	d.dept_name as "Dept. Name",
	m.emp_no as "Employee #",
	e.last_name as "Last Name",
	e.first_name as "First Name"
FROM departments as d, dept_manager as m, employee as e
WHERE m.emp_no = e.emp_no AND m.dept_no = d.dept_no

-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
SELECT
	p.dept_no as "Dept. #",
	e.emp_no as "Employee #",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	d.dept_name as "Dept. Name"
FROM dept_emp as p, employee as e, departments as d
WHERE p.emp_no = e.emp_no AND p.dept_no = d.dept_no

-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
SELECT 
	first_name as "First Name",
	last_name as "Last Name",
	sex as "Sex"
FROM employee 
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List each employee in the Sales department, including their employee number, last name, and first name.
SELECT 
	e.emp_no as "Employee #",
	e.last_name as "Last Name",
	e.first_name as "First Name"
FROM employee as e, departments as d, dept_emp as p
WHERE p.emp_no = e.emp_no
AND p.dept_no = d.dept_no
AND d.dept_name = 'Sales'

-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT 
	e.emp_no as "Employee #",
	e.last_name as "Last Name",
	e.first_name as "First Name",
	d.dept_name as "Dept. Name"
FROM employee as e, departments as d, dept_emp as p
WHERE p.emp_no = e.emp_no
AND p.dept_no = d.dept_no
AND d.dept_name IN ('Sales', 'Development')
ORDER BY dept_name

-- List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
SELECT 
	DISTINCT(last_name),
	COUNT(last_name)
FROM employee
GROUP BY last_name
ORDER BY COUNT(last_name) desc;
