-- From the following tables, write a SQL query to find the first name, last name, department number, and department name for each employee. 

use employees; 
select 
	employees.first_name,
    employees.last_name,
    departments.dept_name,
    dept_emp.dept_no
    
    
	from employees
	left join dept_emp on employees.emp_no=dept_emp.emp_no
	left join  departments on dept_emp.dept_no = departments.dept_no;