select a.emp_no, a.last_name, a.first_name, a.sex, b.salary  from employee a,salary b where a.emp_no=b.emp_no;

2. List first name, last name, and hire date for employees who were hired in 1986.


	Select first_name,last_name,hire_date from employee where hire_date between '1986-01-01' and '1986-12-31'


3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
J
Select b.dept_no,b.dept_name, a.emp_no, a.last_name,a.first_name from employee a,departments b, dept_manager c where b.dept_no=c.dept_no and a.emp_no=c.emp_no;

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

Select a.emp_no, 
a.last_name,
a.first_name, 
c.dept_name 
from  employee a, dept_manager b, departments c
where a.emp_no=b.emp_no and b.dept_no=c.dept_no;


5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name,last_name,sex  from employee where first_name=‘Hercules’ and last_name like ‘B%’;


6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

Select a.emp_no,
a.last_name,
a.first_name,
b.dept_name 
from employee a, departments b ,dept_emp c
where b.dept_name='Sales' and a.emp_no=c.emp_no and b.dept_no=c.dept_no

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select a.emp_no,
a.last_name,
a.first_name,
b.dept_name 
from employee a, departments b ,dept_emp c
where b.dept_name in ('Sales','Development') and a.emp_no=c.emp_no and b.dept_no=c.dept_no


8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select count(*),last_name  from employee group by 2 order by  last_name desc;


select * from employee
select * from dept_manager
select * from departments
select * from title
select * from salary
select * from  dept_emp
