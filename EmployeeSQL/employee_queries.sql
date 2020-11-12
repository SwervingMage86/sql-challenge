-- Salaries of each employee
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no
;

-- Every employee hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE
EXTRACT(YEAR FROM hire_date) = 1986
;

-- Department Managers
SELECT d.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM departments d
JOIN dept_manager dm
ON d.dept_no = dm.dept_no
	JOIN employees e
	ON dm.emp_no = e.emp_no
;

-- Departments each employee worked in
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
	JOIN departments d
	ON de.dept_no = d.dept_no
	ORDER BY e.last_name
;

-- Hercules B.
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%'
;

-- Sales Employees
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
	JOIN departments d
	ON de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'
;

-- Sales & Development Employees
SELECT e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
JOIN dept_emp de
ON e.emp_no = de.emp_no
	JOIN departments d
	ON de.dept_no = d.dept_no
	WHERE d.dept_name = 'Sales'
	OR d.dept_name ='Development'
;

-- Count of last names
SELECT last_name, COUNT(last_name) AS count
FROM employees
GROUP BY last_name
ORDER BY count DESC
;

-- Create a view of salaries and titles
CREATE VIEW salary_title AS
	SELECT s.emp_no, s.salary, t.title
	FROM salaries s
	JOIN employees e
	ON s.emp_no = e.emp_no
		JOIN titles t
		ON e.emp_title = t.title_id
;