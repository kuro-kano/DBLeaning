-- Question #871
select employee_id, first_name, last_name, department_id, department_name from employees
join departments using (department_id);

-- Question #872
select e.employee_id, e.first_name, e.last_name, e.department_id, d.department_name from employees e
join departments d on (d.department_id = e.department_id);

-- Question #873
select e.employee_id, e.first_name, e.last_name, d.department_id, d.department_name from employees e, departments d
where d.department_id = e.department_id;

-- Question #876
select 	e.first_name, e.last_name, e.employee_id Emp, 
	      m.first_name 'MGR First Name', m.last_name 'MGR Last Name', m.employee_id 'Mgr'
from employees e join employees m
on (m.employee_id = e.manager_id);

-- Question #878
select distinct m.first_name 'MGR First Name', m.last_name 'MGR Last Name', m.manager_id 'MGR' from employees e
join employees m on (e.manager_id = m.employee_id) order by m.manager_id asc;

--Question #879
select e.first_name,e.last_name,e.hire_date
	,m.first_name `Mgr First Name`,m.last_name `Mgr Last Name`,m.hire_date `Mgr Hired`
from employees e join employees m
on e.manager_id = m.employee_id
where e.hire_date < m.hire_date;

-- Question #880
select e.first_name, e.last_name, e.hire_date, e.salary from employees e
join employees Ernst on (e.hire_date > Ernst.hire_date) where Ernst.last_name = 'Ernst';

-- Question #1724
select location_id, street_address, city, state_province from locations
join countries using (country_id)
join regions using(region_id) where region_id = 1;

-- Question #1725
select d.department_id, d.department_name, l.street_address from departments d
join locations l on (d.location_id = l.location_id)
join countries c on (c.country_id = l.country_id)
where c.country_name like 'U%'
