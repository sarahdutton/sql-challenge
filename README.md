# SQL Challenge

## Background
It’s been two weeks since I have been hired as a new data engineer at Pewlett Hackard (a fictional company). My first major task is to do a research project about people whom the company employed during the 1980s and 1990s. All that remains of the employee database from that period are six CSV files.
For this project, I have designed the tables to hold the data from the CSV files, imported the CSV files into a SQL database, and then answered questions about the data.
     
## Project Description
This Challenge is divided into three parts: data modeling, data engineering, and data analysis.

## Data Modeling

Inspected the CSV files, and then sketched an Entity Relationship Diagram of the tables.

## Data Engineering

I specified the data types, primary keys, foreign keys, and other constraints.
For the primary keys, I verified that the column is unique. Otherwise, I created a composite key Links to an external site., which takes two primary keys to uniquely identify a row.
I created the tables in the correct order to handle the foreign keys.
Lastly, I Imported each CSV file into its corresponding SQL table.

## Data Analysis

Listed the employee number, last name, first name, sex, and salary of each employee.
Listed the first name, last name, and hire date for the employees who were hired in 1986.
Listed the manager of each department along with their department number, department name, employee number, last name, and first name.
Listed the department number for each employee along with that employee’s employee number, last name, first name, and department name.
Listed first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.
Listed each employee in the Sales department, including their employee number, last name, and first name.
Listed each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.
Listed the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).


## Resources
1. SQL Documentation and Lessons
2. Python Libraries and Packages
3. Development Tools: Visual Studio Code
4. Version Control: Git and Github
5. Collaboration and Communication: Slack and Zoom
6. Instructional Staff: Travis Hopkins (Instructor) and Kian Layson (TA)
7. Bootcamp Requirements for README file information 

## Tools and Techniques:
1. Pandas
2. Numpy
3. Matplotlib
4. PostreSQL
5. QuickDBD for Entity Relationship Diagram 

## List of Content

### EmployeeSQL Folder
Employee_ERD.png: an image file of the ERD
Employee_Schema.sql: a .sql file of the table schemata
Employee_Query.sql: a .sql file of the queries

### Data Folder
- Contains the 6 CSV Files used

