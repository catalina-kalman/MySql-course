/*
The HR department wants a query to display the last name, job code, hire date, and employee number
for each employee, with employee number appearing first. Provide an alias STARTDATE for the HIRE_DATE column.
*/
use employee_database;

select
employee_id, last_name, job_id, hire_date "Startdate"
from employee;

/*
2.	The HR department wants more descriptive column headings for its report on employees.
	Name the column headings Emp #, Employee, Job, and Hire Date, respectively.
*/
use employee_database;

select
employee_id "Emp #", last_name "Employee", job_id "Job", hire_date "Hire Date"
from employee;

/*
3.	The HR department has requested a report of all employees and their job IDs. Display the last name concatenated with the job ID
	(separated by a comma and space) and name the column Employee and Title.
*/
use employee_database;

select concat(last_name, ", ", job_id) "Employee and Title"
from employee;

/*
4.	To familiarize yourself with the data in the EMPLOYEES table, create a query to display all the data from that table.
Separate each column output by a comma. Name the column title THE_OUTPUT.
*/
use employee_database;

select concat(employee_id, ", ", first_name, ", ", last_name, ", ", email, ", ", phone_number, ", ", hire_date, ", ",
job_id, ", ", salary, ", ", commission_pct, ", ", manager_id, ", ", department_id, ", ") "THE_OUTPUT"
from employee;

/*
1.	Due to budget issues, the HR department needs a report that displays
the last name and salary of employees who earn more than $12,000.
*/
use employee_database;

select last_name, salary
from employee
where salary>12000;

/*
2.	Create a report that displays the last name and department number
for employee number 17.
*/
use employee_database;

select last_name, department_id
from employee
where employee_id = 17;

/*
3.	Create a report to display the last name, job ID, and start date
for the employees with the last names of Brown and Anderson
*/
select last_name, job_id, hire_date
from employee
where last_name = "Brown" or last_name = "Anderson";

/*
4.	Display the last name and department number of all employees in
departments 2 or 5.
*/
select last_name, department_id
from employee
where department_id = 2 or department_id = 5;

/*
5.	Display the last name and salary of employees who earn between $5,000
and $45,000 and are in department 2 or 5. Label the columns Employee
and Monthly Salary, respectively.
*/
select last_name "Employee", salary "Monthly Salary"
from employee
where salary between 5000 and 45000 and (department_id = 2 or department_id = 5);

/*
6.	The HR department needs a report that displays the last name
and hire date for all employees who were hired in 2002.
*/
select last_name, hire_date
from employee
where hire_date between "2002-01-01" and "2002-12-31";

/*
7.	Create a report to display the last name and job title of all
employees who do not have a manager.
*/
select last_name, job_id
from employee
where manager_id is null;

/*
8.	Create a report to display the last name, salary, and commission
of all employees who earn commissions.
*/
select last_name, salary, commission_pct
from employee
where commission_pct is not null;
