-- Question #231
create table MEMBER(
  member_id int(10) primary key,
  last_name varchar(25) not null,
  first_name varchar(25),
  address varchar(100),
  city varchar(30)
);

-- Question #1570
alter table lab_emp
add primary key (id);

-- Question #292
alter table lab_location
add primary key (location_id);

-- Question #1571
alter table lab_location
add primary key (location_id);
alter table lab_emp
add constraint lab_emp_fk
    foreign key (location_id)
    references lab_location(location_id);

-- Question #1572
alter table lab_location
add constraint loc_name_un
    unique (location_name);

-- Question #1573
alter table lab_emp
modify last_name varchar(25) not null;
alter table lab_emp modify
first_name varchar(25) not null;

-- Question #2447
alter table countries
drop foreign key countries_regions_region_id;
alter table regions
drop primary key;

-- Question #2448
alter table locations
drop foreign key locations_countries_country_id;

-- Question #2449
alter table employees
drop foreign key employees_departments_department_id;
alter table job_history
drop foreign key job_history_departments_department_id;
drop table departments;

-- Question #2450
set foreign_key_checks = 0;
drop table regions;
set foreign_key_checks = 1;

-- Question #2451
alter table countries drop foreign key countries_regions_region_id;
drop table regions;

-- Question #1548
alter table employees
drop foreign key employees_jobs_job_id;
alter table employees
drop column job_id;
describe employees;

-- Question #3110
create table MEMBER2(
  member_id int(10),
  last_name varchar(25) not null,
  first_name varchar(25),
  address varchar(100),
  city varchar(30),
  primary key (member_id)
);
