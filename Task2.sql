-- write a SQL query to find those employees whose first name contains a letter ‘z’. Return first name, last name, department

use employees;
select
	employees.first_name,
    employees.last_name,
    -- dept_emp.dept_no,
    departments.dept_name


from employees
 join dept_emp on employees.emp_no = dept_emp.emp_no
 join  departments on dept_emp.dept_no = departments.dept_no

where first_name like 'z%' and last_name like '%i%' or last_name like '%ee%'

;