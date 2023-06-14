drop database if exists employee_database;

create database employee_database;
use employee_database;

drop table if exists countries;
create table countries(
country_id char(2) primary key,
country_name varchar(40),
region_id int
);

drop table if exists jobs;
create table jobs(
job_id varchar(10) primary key,
job_title varchar(35) not null,
min_salary int,
max_salary int
);

drop table if exists locations;
create table locations(
location_id int primary key,
street_adress varchar(40),
postal_code varchar(12),
city varchar(30) not null,
state_province varchar(25),
country_id char(2), constraint foreign key(country_id) references countries(country_id) on update cascade on delete set null
);

drop table if exists departments;
create table departments(
department_id int primary key,
department_name varchar(30) not null,
manager_id int,
location_id int, constraint foreign key(location_id) references locations(location_id) on update cascade on delete set null
); 

drop table if exists employee;
create table employee(
employee_id int primary key,
first_name varchar(20),
last_name varchar(25) not null,
email varchar(30) not null,
phone_number varchar(20),
hire_date date not null,
job_id varchar(10), constraint foreign key(job_id) references jobs(job_id) on update cascade on delete set null, 
salary double,
commission_pct double,
manager_id int, 
department_id int, constraint foreign key(department_id) references departments(department_id) on update cascade on delete set null
);

drop table if exists job_history;
create table job_history(
employee_id int, constraint foreign key(employee_id) references employee(employee_id),
start_date date not null,
end_date date not null,
job_id varchar(10), constraint foreign key(job_id) references jobs(job_id),
department_id int, constraint foreign key(department_id) references departments(department_id),
primary key(employee_id, job_id)
);

