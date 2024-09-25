-- Question #3657
create table repair_detail(
  repair_detail_id int(10),
  repair_id int(10) not null,
  component varchar(200) not null,
  note text(200),
  amount int(2) not null,
  repair_total int(10) not null,
  primary key (repair_detail_id), foreign key (repair_id) references repair_list(repair_id)
);

-- Question #3658
rename table members to customers, booking to rent_list;

-- Question #3659
alter table cars
add primary key (car_id);
alter table rental_detail
add constraint rental_detail_rent_id_fkey
	  foreign key (rent_id)
	  references rent_list(rent_id);
alter table rental_detail
add constraint rent_detail_car_id_fkey
	  foreign key (car_id)
	  references cars(car_id);

-- Question #3660
insert into cars(car_id, registration_number, brand, type, color, start_date)
values  (51, 'กส555', 'BMW', 'Sedan', 'Orange', '2023-05-15'),
        (52, 'ตก000', NULL, 'SUV', 'Blue', '2023-05-16');

-- Question #3661
update cars
set color = "White" where brand = "BMW";

-- Question #3662
alter table rental_detail
drop foreign key FK_car_id_rental_detail;
alter table repair_list
drop foreign key FK_car_id_repair_list;
delete from cars where car_id = 1;

-- Question #3663
select *, repair_total * 0.8 as afdiscount from repair_detail;

-- Question #3664
select concat(first_name, " ",  last_name) as `full_name` from customers
order by `full_name`;

-- Question #3666
alter table Customers
change address address_customers varchar(100) not null;

-- QUestion #3667
insert into cars values (111, "SV486", null, "White", "Truck", "2023-06-23");

-- Question #3668
alter table customers
add constraint unique_tel
	  unique (tel);

-- Question #3672
update repair_detail
set component = "Battery", repair_total = 1500 where repair_id = 2;

-- Question #3677
select price, fine, rental_total from rental_detail;
select component as `part`, note as `description`, repair_total as `cost_repair` from repair_detail;

-- Question #3683
select component as `part`, note as `description`, repair_total as `cost_repair` from repair_detail;

-- Question #3695
alter table rental_detail
drop foreign key FK_car_id_rental_detail;
alter table repair_list
drop foreign key FK_car_id_repair_list;
alter table cars
drop car_id;
