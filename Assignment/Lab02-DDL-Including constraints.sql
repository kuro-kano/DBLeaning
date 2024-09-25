-- Question #233
create table title(
  title_id int primary key,
  title varchar(60) not null,
  description varchar(400) not null,
  rating varchar(4),
  category varchar(20),
  release_date date
);

-- Question #234
create table title(
  title_id int,
  title varchar(60) not null,
  description varchar(400) not null,
  rating varchar(4),
  category varchar(20),
  release_date date,
  primary key `title_title_id` (title_id)
);

-- Question #236
create table title_copy( 
  copy_id int primary key, 
  title_id int not null, 
  status varchar(15) not null, 
  foreign key (title_id) 
  references title(title_id)
);

-- Question #237
create table title_copy(
  copy_id int not null,
  title_id int not null,
  status varchar(15) not null,
  primary key `title_copy_title_id` (copy_id),
  foreign key (title_id)
  references title(title_id)
  on delete cascade
);

-- Question #2441
alter table title
add constraint title_un
    unique (title);

-- Question #2442
alter table title
modify release_date date not null;

-- Question #2443
alter table title
add constraint title_cat_fk
	  foreign key (category_id)
	  references title_category(title_category_id);

-- Question #2444
alter table title
drop primary key;

-- Question #2445
alter table title
drop index title_un;

-- Question #2446
alter table employees
drop foreign key employees_jobs_job_id;
alter table job_history
drop foreign key job_history_jobs_job_id;
drop table jobs;

-- Question #2453
alter table locations
drop foreign key locations_countries_country_id;
drop table countries;

-- Question #1551
alter table title_copy
drop foreign key title_copy_ibfk_1;
alter table title_copy
drop column title_id;
