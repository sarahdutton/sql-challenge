Departments
-
Dept_No INT PK
Dept_Name VARCHAR

Dept_Emp
-
Emp_No PK INT FK >- Employees.Emp_No
Dept_No PK INT FK >- Departments.Dept_No

Dept_Manager
-
Dept_No PK VARCHAR FK >- Departments.Dept_No
Emp_No PK INT FK >- Employees.Emp_No

Employees
-
Emp_No PK INT
Emp_Title_ID VARCHAR FK >- Titles.Title_ID
Birth_Date VARCHAR
First_Name VARCHAR
Last_Name VARCHAR
Sex VARCHAR
Hire_Date VARCHAR

Salaries
-
Emp_No PK INT FK - Employees.Emp_No
Salary INT

Titles
-
Title_ID PK VARCHAR
Title VARCHAR
