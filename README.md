# sql_challenge
•	Data Modeling 
Entity Relationship Diagram is included as  saved screenshot in the repo
•	Data Engineering 
All required columns are defined for each table using CREATE TABLE command.
Columns are set to the correct data type like INT for employee number and salaries, DATE for birth dates and hire dates, as well as remaining variables as VARCHAR.
Primary Keys set for each table using PRIMARY KEY command.
Correctly references related tables with the tables, where it’s possible.
Tables are correctly related using Foreign Keys using FOREIGN KEY command, where necessary.
Correctly uses NOT NULL condition on necessary columns (actually used for the majority of the columns).
Accurately defines value length for columns.
•	Data Analysis 
List the employee number, last name, first name, sex, and salary of each employee using LEFT JOIN between tables EMPLOYEES and SALARIES, as well as filtering function WHERE.
List the first name, last name, and hire date for the employees who were hired in 1986 using EMPLOYEES table alone and filtering function WHERE(between, and).
List the manager of each department along with their department number, department name, employee number, last name, and first name using 2 INNER JOINS at first between department managers table and employees table ON dept_no, then another INNER JOIN between departments and employees tables on emp-no.
List the department number for each employee along with that employee’s employee number, last name, first name, and department name using 2 INNER JOINS at first between department name table and employees table ON emp_no, then another INNER JOIN between departments and dept_emp tables on dept_no.
List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B using EMPLOYEES table alone and filtering function WHERE(=, and like ’B%’).
List each employee in the Sales department, including their employee number, last name, and first name using 2 INNER JOINS at first between dept_emp table and employees table ON emp_no, then another INNER JOIN between departments and dept_emp tables on dept_no, following filtering WHERE for ‘Sales’ department name.
List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name using 2 INNER JOINS at first between dept_name table and employees table ON emp_no, then another INNER JOIN between departments and dept_emp tables on dept_no, following filtering WHERE  IN for ‘Sales, DEVELOPMENT’ department names.
List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) using GROUP BY and ORDER by COUNT functions from the employees table. 
