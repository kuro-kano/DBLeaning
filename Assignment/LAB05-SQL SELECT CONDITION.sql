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

-- Question #1705
select concat(first_name, ' ', last_name) 'full name', phone_number 'phone' from employees
where commission_pct is not null and commission_pct > 0;

-- Question #1706
select first_name, last_name, salary from employees
where job_id not in ("IT_PROG", "AD_VP", "AD_PRES") order by job_id desc;

-- Question #2585
select department_name from departments
where department_name like "IT%";

-- Question #2587
select first_name, last_name, phone_number from employees
where phone_number like "515%" or last_name like "_e%";

-- Question #2588
select employee_id, end_date, job_id from job_history
where end_date < "2000%";

-- Question #2589
select employee_id, first_name, last_name, commission_pct + 0.5 as `New Commission` from employees
where commission_pct + 0.5 > 0.7 order by `New Commission` desc;

-- Question #2590
select location_id, street_address, state_province from locations
where country_id != 'CN' and state_province is not null;

-- Question #2591
select concat(street_address, '_', city) Address from locations
where country_id not in ('CA', 'CN', 'CH');

-- Question #2668
select TradeName, GenericMark from medicine where TradeName like '%2.5$%' escape '$';
