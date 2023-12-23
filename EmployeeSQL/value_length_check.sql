--DEPARTMENTS--
SELECT MAX(LENGTH(dept_no)) AS max_length
FROM departments;
--4 

SELECT MAX(LENGTH(dept_name)) AS max_length
FROM departments;
--18


--DEPT_EMP--
SELECT MAX(LENGTH(dept_no)) AS max_length
FROM dept_emp;
--4


--DEPT_MANAGER--
SELECT MAX(LENGTH(dept_no)) AS max_length
FROM dept_manager;
--4


--EMPLOYEE--
SELECT MAX(LENGTH(emp_title_id)) AS max_length
FROM employee;
--5

SELECT MAX(LENGTH(first_name)) AS max_length
FROM employee;
--14

SELECT MAX(LENGTH(last_name)) AS max_length
FROM employee;
--16


--TITLES--
SELECT MAX(LENGTH(title_id)) AS max_length
FROM titles;
--5

SELECT MAX(LENGTH(title)) AS max_length
FROM titles;
--18