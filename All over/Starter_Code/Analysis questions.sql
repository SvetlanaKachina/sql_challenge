select emp.emp_no, emp.last_name, emp.first_name, emp.sex, sal.salary
from employees as emp
left join salaries as sal 
on (emp.emp_no=sal.emp_no);


select first_name, last_name, hire_date
from employees 
where hire_date between '1986-01-01' and '1986-12-31';

select dm.dept_no, dm.emp_no, d.dept_name, emp.first_name, emp.last_name
from dept_manager as dm
inner join departments as d
on(dm.dept_no=d.dept_no)
inner join employees as emp
on(emp.emp_no=dm.emp_no);


select emp.emp_no, emp.last_name, emp.first_name, d.dept_name
from employees as emp
inner join dept_emp
on(dept_emp.emp_no=emp.emp_no)
inner join departments as d
on(d.dept_no = dept_emp.dept_no);

select first_name, last_name, sex
from employees
where first_name='Hercules' and last_name like 'B%';


select emp.emp_no, emp.last_name, emp.first_name, d.dept_name
from employees as emp
inner join dept_emp
on(dept_emp.emp_no=emp.emp_no)
inner join departments as d
on(d.dept_no = dept_emp.dept_no)
where d.dept_name = 'Sales';


select emp.emp_no, emp.last_name, emp.first_name, d.dept_name
from employees as emp
inner join dept_emp
on(dept_emp.emp_no=emp.emp_no)
inner join departments as d
on(d.dept_no = dept_emp.dept_no)
where d.dept_name in ('Sales','Development');


select last_name, count(last_name)
from employees
group by last_name
order by count(last_name)desc;
