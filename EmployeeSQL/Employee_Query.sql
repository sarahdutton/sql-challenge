DROP TABLE Titles

CREATE TABLE Titles (
	Title_ID VARCHAR PRIMARY KEY,
	Title VARCHAR NOT NULL
);

SELECT * FROM Titles

-------------------------------

DROP TABLE Departments

CREATE TABLE Departments (
  Dept_No VARCHAR PRIMARY KEY,
  Dept_Name VARCHAR
);

SELECT * FROM Departments

-------------------------------

DROP TABLE Employees
	
CREATE TABLE Employees (
	Emp_No INT PRIMARY KEY,
	Emp_Title_ID VARCHAR NOT NULL,
	Birth_Date DATE NOT NULL,
	First_name VARCHAR NOT NULL,
	Last_name VARCHAR NOT NULL,
	Sex VARCHAR NOT NULL,
	Hire_Date DATE NOT NULL
);

SELECT * FROM Employees

------------------------------

DROP TABLE Dept_Emp
	
CREATE TABLE Dept_Emp (
	Emp_No INT NOT NULL,
	Dept_No VARCHAR NOT NULL,
	PRIMARY KEY (Emp_No, Dept_No),
    FOREIGN KEY (Emp_No) REFERENCES Employees(Emp_No),
    FOREIGN KEY (Dept_No) REFERENCES Departments(Dept_No)
);

SELECT * FROM Dept_Emp

------------------------

DROP TABLE Salaries

CREATE TABLE Salaries (
	Emp_no INT PRIMARY KEY,
	Salary INT NOT NULL,
	FOREIGN KEY(Emp_No) REFERENCES Employees(Emp_No)
);

SELECT * FROM Salaries


------------------------

DROP TABLE Dept_Manager

CREATE TABLE Dept_Manager (
 Dept_No VARCHAR NOT NULL,
 Emp_No INT NOT NULL,
 FOREIGN KEY (Dept_No) REFERENCES Departments(Dept_No),
 FOREIGN KEY (Emp_No) REFERENCES Employees(Emp_No)
);

SELECT * FROM Dept_Manager

------------------------


---------- DATA ANALYSIS --------------

-- 1. List the employee number, last name, first name, sex, and salary of each employee.
SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salary
FROM employees
JOIN salaries ON employees.emp_no = salaries.emp_no;

-- 2. List the first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date LIKE '%1986';

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT dept_manager.dept_no, departments.dept_name, dept_manager.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- 4. List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' and last_name LIKE 'B%';

-- 6. List each employee in the Sales department, including their employee number, last name, first name, and department name.
SELECT * FROM departments;
-- The Sales department no is d007.
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd007';

-- 7. List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT * FROM departments;
-- The department numbers of Sales and Development departments are d007 and d005
SELECT employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE departments.dept_no = 'd005' or departments.dept_no = 'd007';


-- 8. List the frequency counts, in desc order, of all the employee last names (how many employees share each last name).
SELECT last_name, COUNT(last_name) AS "Frequency count"
FROM employees
GROUP BY last_name
ORDER BY "Frequency count" DESC;

