-- From the following table, write a SQL query to find all departments including those without any employee. Return first name, last name, department ID, department name.

-- Sample output is:
-- first_name | seond_name | dept_id | department
-- Steven 		|Krull 		| 90 		|Executive 

-- What do we need? Obviously a join, since names are in one table (employee) and dept_ides and departments in another. 
-- select statement - we need names from employee, department Id from dept_empt and department name is in departments table
-- This means we need 3 joins: on employee join department ID and on department ID join the department name

use employees;

-- here are the columns we will display 

select
	employees.first_name,
    employees.last_name,
    dept_emp.dept_no,
    departments.dept_name

-- here are the joins
from employees
 join dept_emp on employees.emp_no = dept_emp.emp_no
 join  departments on dept_emp.dept_no = departments.dept_no



