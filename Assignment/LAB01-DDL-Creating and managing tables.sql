-- Question #235
alter table title
modify category varchar(25);

-- Question #238
alter table title_copy
drop column status;
describe title_copy;

-- Question #239
drop table title_copy;

-- Question #240 -- ได้ 2 แบบนะ
alter table title rename movie_maste --1
rename table title to movie_master --2

-- Question #1549
alter table title
drop column rating;

-- Question #1550
alter table title_copy
modify status char(50);

-- Question #232
create table STAFF(
    staff_id int(5),
    first_name varchar(25),
    last_name varchar(25),
    address varchar(150)
);
