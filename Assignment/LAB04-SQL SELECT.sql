-- Question #2584
select concat(email, ' ', phone_number) as `Contact` from employees;

-- Question #308
select concat(first_name, ' ', last_name) as `full name` from employees;

-- Question #2586
select country_id, region_id from countries
order by country_name desc;

-- Question #3101
select concat(first_name, " ", last_name) as `Employee name`, commission_pct * salary as `Net Commission`
from employees order by `Net Commission` desc;

-- Question #3102
select job_id, job_title, min_salary, max_salary, (max_salary - min_salary) / 1.25 as `index of salary` from jobs;

-- Question #3103
select distinct job_id from employees;

-- Question #3104
select * from departments
order by location_id asc, manager_id asc;

-- Question #3105
select concat(first_name, ' ', last_name, ' (', email, ') is ', job_id) as `short description` from employees;
