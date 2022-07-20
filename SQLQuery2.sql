create table student_details1(
s_id int,
s_name varchar(20),
s_marks varchar(20),
primary key(s_id)
);

create table student_details2(
s_id int,
s_name varchar(20),
s_marks varchar(20),
primary key(s_id)
);



insert into student_details1 values(
1, 'sam', 45
);

insert into student_details1 values(
2, 'Bob', 87
);

insert into student_details1 values(
3, 'Anne', 73
);

insert into student_details1 values(
4, 'Julia,', 92
);

insert into student_details2 values(
3, 'Anne', 73
);


insert into student_details2 values(
4, 'Julia,', 92
);

insert into student_details2 values(
5, 'Matt', 65
);

select * from student_details1;
select * from student_details2;

/* Union operator */

select * from student_details1
union 
select * from student_details2;

select * from student_details1
union all
select * from student_details2;

/* Except operator */
select * from student_details1;
select * from student_details2;

select * from student_details1
except
select * from student_details2;

/* Intersect */
use sparta;
select * from student_details1
intersect
select * from student_details2;
