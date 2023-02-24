departments
-- 
dept_no varchar pk
dept_name varchar

dept_emp
-- 
emp_no int 
dept_no varchar FK >- departments.dept_no


dept_manager
-- 
dept_no varchar FK >- departments.dept_no
emp_no int

employees
-- 
emp_no int pk FK >- dept_manager.dept_no FK >- salaries.emp_no FK >- dept_emp.emp_no
emp_title_id varchar FK >- titles.title
birth_date date
first_name varchar
last_name varchar
sex varchar
hire_date date

salaries
-- 
emp_no int
salary int

titles
-- 
title_id varchar pk
title varchar