-- Write a query returning a highest pay salary 

use employees;
select
	employees.first_name,
    employees.last_name,
    dept_emp.dept_no,
    departments.dept_name,
    salaries.salary,
    max(salaries.salary) as max_salary


from employees
 join dept_emp on employees.emp_no = dept_emp.emp_no
 join  departments on dept_emp.dept_no = departments.dept_no
 join salaries on employees.emp_no = salaries.emp_no 
 group by departments.dept_name, dept_emp.dept_no
