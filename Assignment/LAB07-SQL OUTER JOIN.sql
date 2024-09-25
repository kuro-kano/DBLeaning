-- Question #917
select employee_id, first_name, last_name, department_id, department_name from employees
left outer join departments using (department_id);

-- Question #918
select employee_id, first_name, last_name, department_id, department_name from employees
right outer join departments using (department_id);

-- Question #919
select  e.first_name, e.last_name, e.employee_id Em
        m.first_name mgr_first_name, m.last_name mgr_last_name, m.manager_id Mgr
from employees e left outer join employees m
on (m.employee_id = e.manager_id) where m.employee_id is null;

-- Question #920
select e.employee_id, e.job_id from job_history j
right outer join employees e on (e.employee_id = j.employee_id)
where j.employee_id is null;

-- Question #921
select l.location_id, l.city from locations l
left outer join departments d on (l.location_id = d.location_id)
where d.location_id is null order by l.city asc;

-- Question #922
select country_id, country_name from departments
join locations using (location_id)
right outer join countries using (country_id)
where department_id is null order by country_name desc;

-- Question #923
select country_id, country_name, region_name from locations
right outer join countries using (country_id)
join regions using (region_id)
where location_id is null order by country_id asc;

-- Question #971
select e.firstName, e.lastName from employees e
left outer join customers c on (e.employeeNumber = c.salesRepEmployeeNumber)
where c.salesRepEmployeeNumber is null;

-- Question #1753
select customerNumber, customerName from payments
right outer join customers using (customerNumber)
where payments.customerNumber is null;
