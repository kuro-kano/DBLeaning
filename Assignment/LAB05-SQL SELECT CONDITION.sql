-- Question #1694
select first_name, last_name, salary * 12 as `Annual Salary` from employees
where salary * 12 > 30000;

-- Question #1696
select first_name, last_name, salary from employees
where first_name like "S%"
order by first_name asc;

-- Question #1697
select first_name, last_name, salary from employees
where manager_id is null;

-- Question #1698
select country_name, region_id from countries
where country_name like 'United%'
order by region_id desc;

-- Question #1699
select job_id, department_id from job_history
where end_date < "1998-01-30"
order by employee_id asc;

-- Question #1700
select *
from employees
where job_id like 'SA&_%' escape '&' or job_id like 'IT&_%' escape '&';

-- Question #1703
select street_address, city, postal_code from locations
where city like "S______" and state_province is not null;

-- Question #1704
select street_address, country_id from locations
where postal_code like "1%0";
