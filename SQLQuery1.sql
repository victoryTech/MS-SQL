/* create table */
create table department(
d_id int,
d_name varchar(20),
d_location varchar(20)
primary key(d_id)
);

/* insert table */
insert into employee values(
1, 'sam', 95000, 45, 'Male', 'operation'
);

insert into employee values(
2, 'Bob', 80000, 21, 'Male', 'support'
);

insert into employee values(
3, 'Anne', 125000, 25, 'Female', 'Analytics'
);

insert into employee values(
4, 'Julia', 73000, 30, 'Female', 'Analytics'
);

insert into employee values(
5, 'Matt', 159000, 33, 'Male', 'Sales'
);

insert into employee values(
6, 'Jeff', 112000, 27, 'Male', 'Operations'
);

insert into department values(
1, 'Content', 'New York'
);

insert into department values(
2, 'Support', 'Chicago'
);

insert into department values(
3, 'Analytics', 'New York'
);

insert into department values(
4, 'Sales', 'Boston'
);

insert into department values(
5, 'Tech', 'Dallas'
);

insert into department values(
6, 'Finance', 'Chicago'
);

select * from department;
select * from employee;

/*select distinct e_gender from employee;*/

select e_name, e_gender from employee where e_gender = 'Female';

select e_name, e_gender from employee where e_age < 30 and e_gender = 'male';

select * from employee where e_salary between 95000 and 125000;

select min(e_salary) as minimumSalary from employee;

select count(*) from employee as countMale where e_gender = 'Male';
 
/* String function */

select '                 spartaa';
select LTRIM('     sparata');

select 'Vicky';
select lower('Vicky');
select upper('Vicky');

select 'i love ice cream';
select reverse('i love ice cream');
select reverse('Vicky');

select 'i love ice cream';
/* string, starting index, length*/
select substring('i love ice cream', 8, 3);

select * from employee;

select top 2 * from employee;

select top 2 * from employee order by e_age desc;

select top 2 e_name from employee order by e_age desc;

select avg(e_salary), e_gender from employee group by e_gender;

select avg(e_age), e_dept from employee group by e_dept;

select avg(e_age), e_dept from employee group by e_dept order by avg(e_age) desc;



select * from employee;

select e_dept, avg(e_salary) as avg_salary
from employee
group by e_dept;

select e_dept, avg(e_salary) as avg_salary
from employee
group by e_dept 
having avg(e_salary) > 100000;

update employee set e_age = 45 where e_name = 'sam';

update employee set e_name = 'Julia' where e_name = 'Aish';

update employee set e_salary = 73000, e_dept = 'Analytics' where e_name = 'Julia';


/*Joins*/


select * from employee;

select * from department;

/* Inner Join */

select employee.e_name, employee.e_dept,
department.d_name, department.d_location
from employee
INNER JOIN department 
ON employee.e_dept = department.d_name;

select * from employee;
select * from department;

/*left Join */

select employee.e_name, employee.e_dept,
department.d_name, department.d_location
from employee
left join department
on employee.e_dept = department.d_name;

/* right join */

select * from employee;
select * from department;

select employee.e_name, employee.e_dept,
department.d_name, department.d_location
from employee
right join department
on employee.e_dept = department.d_name;

/* full join */
select * from employee;
select * from department;

select employee.e_name, employee.e_dept,
department.d_name, department.d_location
from employee
full join department
on employee.e_dept = department.d_name;

/* update using join */

select * from employee;
select * from department;

update employee
set e_age = e_age + 10
from employee
join department on employee.e_dept = department.d_name
where d_location = 'New York';

/* delete using join */
select * from employee;
select * from department;

delete employee
from employee
join department on employee.e_dept = department.d_name
where d_location = 'New York';


/* view */

create view female_employees as
select * from employee
where e_gender = 'Female';

select * from female_employees;

drop view female_employees;


/* Alter */
/* add column */
alter table employee
add e_dob date;

alter table employee
drop column e_dob;
use sparta;
select * from employee;
