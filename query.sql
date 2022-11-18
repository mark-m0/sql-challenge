-- List the following details of each employee:
-- employee number, last name, first name, sex, and salary
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
LEFT JOIN salaries s
ON e.emp_no = s.emp_no;

-- List first name, last name, and hire date for employees hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date <= '1986-12-31'
AND hire_date >= '1986-01-01';

-- List manager of each department with the following info:
-- department number, department name, manager's employee number, last name, first name
SELECT d.dept_name, m.emp_no, e.first_name, e.last_name
FROM departments d
LEFT JOIN dept_managers m
ON d.dept_no = m.dept_no
LEFT JOIN employees e
ON e.emp_no = m.emp_no;

-- List first name, last name, and sex for employees whose first name is "Hercules"
-- and last names begin with "B"
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

-- List all employees in the Sales department
-- including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp
ON e.emp_no = dept_emp.emp_no
LEFT JOIN departments d
ON d.dept_no = dept_emp.dept_no
WHERE d.dept_name = 'Sales';

-- List all employees in the Sales and Development departments
-- including their employee number, last name, first name, and department name
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
LEFT JOIN dept_emp
ON e.emp_no = dept_emp.emp_no
LEFT JOIN departments d
ON d.dept_no = dept_emp.dept_no
WHERE d.dept_name = 'Sales'
OR d.dept_name = 'Development';

-- List the frequency count of employee last names in descending order
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY last_name
ORDER BY COUNT(last_name) DESC;