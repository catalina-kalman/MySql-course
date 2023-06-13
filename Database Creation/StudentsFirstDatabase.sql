create database students;
use students;

create table student(
rollNo int,
studentname varchar(30),
DateofBirth date,
Standard varchar(30),
address varchar(50),
fathername varchar(20));

insert into student
values(101, "John Smith", "2000-12-22", "English", "17 Star House", "Brian"),
(213, "Jane Doe", "2000-12-18", "Drama", "16 Raglan House", "Michael"),
(191, "Sam Smith", "2001-06-15", "Physics", "1 Grey Road", "Brian");

select * from student;
