-- Question #2601
select cFirstName, ClientTel, PrefType from client
where MaxRent between 5000 and 10000;

-- Question #2603
select PropStreet, PropCity from propertyforrent
where OwnerNo is null;

-- Question #2605
select PropCity, Type from propertyforrent
where PropPostcode like '4%4';

-- Question #2611
select cFirstName, cLastName from client
where MaxRent = 50000;

-- Question #2617
select PropNo, Comment from interesting
where Comment like '%2_%%' escape '_';

-- Question #2618
select PropNo, Rent * 0.5 as `discount rent` from propertyforrent
where Type = 'condo' order by `discount rent` asc;

-- Question #2619
select ClientNo, ClientTel from client
where PrefType = 'townhouse' order by MaxRent desc;

-- Question #2620
select sFirstName, sLastName from staff
where Sex = 'F' and DOB = '2002-11-21';

-- Question #2750
select cFirstName, cLastName, InterestDate, Comment from client c, interesting i
where c.ClientNo = i.ClientNo;

-- Question #2751
select Position, Salary, PropStreet, PropCity from staff s
join propertyforrent p on (s.StaffNo = p.StaffNo);

--Quest #2752
select PropCity, PropPostcode, Rent, oFirstName, OwnerTel from propertyforrent
join privateowner using (OwnerNo) where PropStreet like '%Ap%';

-- Question #2754
select oFirstName, oLastName, OwnerTel, PropNo from propertyforrent pf
right outer join privateowner po on (pf.OwnerNo = po.OwnerNo);

-- Question #2755
select oFirstName, oLastName, OwnerTel from propertyforrent pf
right outer join privateowner po on (pf.OwnerNo = po.OwnerNo)
where pf.OwnerNo is null;

-- Question #2756
select avg(Salary) `AverageSalary` from staff;

-- Question #2757
select OwnerNo, count(StaffNo) `AmountOfStaff` from propertyforrent
group by OwnerNo;

-- Question #2758
select PropNo, count(Comment) `AmountOfComment` from interesting
group by PropNo having `AmountOfComment` > 1;

-- Question #2759
select sFirstName, sLastName, Salary from staff
where Position = (select Position from staff where StaffNo = '400021') and StaffNo <> '400021';

-- Question #2760
select PropNo, Type, Rent from propertyforrent
where Rent < any(select Rent from propertyforrent where Type = 'condo');
