-- List all employes with the departments who have the highest salary with their year of join, followed by departmnt name, hire year and the salary amount. 

select employees.last_name, employees.first_name, departments.dept_name, year(employees.hire_date) as hire_year, max(salaries.salary) as max_salary
from dept_emp
left join departments
on dept_emp.dept_no = departments.dept_no
left join salaries
on dept_emp.emp_no = salaries.emp_no
left join employees
on employees.emp_no = dept_emp.emp_no
group by departments.dept_name 
order by max_salary, hire_year;

