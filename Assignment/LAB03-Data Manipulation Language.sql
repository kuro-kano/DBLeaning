-- Question #302
insert into lab_emp
values (1, 'Pastel', 'Lorenze', 'lpastel', 895);

-- Question #303
insert into lab_emp(id, last_name, first_name, userid, salary)
values (2, 'Dansk', 'Patty', 'pdansk', 860);

-- Question #305
update lab_emp
set last_name = 'Detroid' where id = 3;

-- Question #306
update lab_emp
set salary = 1000 where salary < 900;

-- Question #307
delete from lab_emp
where first_name = 'Patty' and last_name = 'Dansk';

-- Question #2761
insert into interesting
values	(20014, 10011, '2001-03-16', 'Wonderful Interior');

-- Question #2763
update staff
set salary = 700 where staffno = 400023;

-- Question #3098
update locations
set state_province = null;

-- Question #3099
delete from lab_emp;

-- QUestion #3100
delete from lab_emp
where salary < 1200;
