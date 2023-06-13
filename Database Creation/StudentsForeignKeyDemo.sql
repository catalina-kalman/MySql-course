create database student_data;

use student_data;

create table course(
courseID int primary key,
courseName varchar(30) not null
);

create table teacher(
teacherID int primary key,
teacherName varchar(30) not null,
adress varchar(20) not null
);

create table student(
studentID int primary key,
feePaid datetime not null,
studentName varchar(30) not null,
adress varchar(20) not null,
teacherID int, constraint foreign key (teacherID) REFERENCES teacher (teacherID),
courseID int, constraint foreign key (courseID) references course (courseID) 
);


