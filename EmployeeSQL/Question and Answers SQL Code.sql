-- Question 1: List the following details of each employee: employee number, last name, first name, sex, and salary.
select em.emp_no, em.last_name, em.first_name, em.sex, sa.salary
from employees as em
join salaries as sa
on em.emp_no = sa.emp_no;


-- Question 2: List first name, last name, and hire date for employees who were hired in 1986.
select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01'
and hire_date <= '1986-12-31';


-- Question 3: List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
select dem.dept_no, dep.dept_name, em.emp_no, em.last_name, em.first_name
from dept_manager as dem
join departments as dep
on dem.dept_no = dep.dept_no
join employees as em
on dem.emp_no = em.emp_no;


-- Question 4: List the department of each employee with the following information: employee number, last name, first name, and department name.
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no;


-- Question 5: List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
select first_name, last_name, sex
from employees
where first_name = 'Hercules' 
and last_name like 'B%';


-- Question 6: List each employee in the Sales department, including their employee number, last name, and first name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales';


-- Question 7: List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name
select employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
from employees
join dept_emp
on dept_emp.emp_no = employees.emp_no
join departments 
on dept_emp.dept_no = departments.dept_no
where dept_name = 'Sales' 
or dept_name = 'Development';


-- Question 8: List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name)
select last_name, COUNT(last_name) as "last_name_count"
from employees
group by last_name
order by "last_name_count" DESC;
