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
employee_id "Emp #", last_name "Employee", job_id "Job", hire_date "Startdate"
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
select concat(employee_id, ", ", first_name, ", ", last_name, ", ", email, ", ", phone_number, ", ", hire_date, ", ", job_id, ", ", salary, ", ", commission_pct, ", ", manager_id, ", ", department_id, ", ");

