/*
Write a query that displays the employee number and last name of all employees who work in a department
with any employee whose last name contains a u.
*/
use employee_database;

select *
from employee;

select employee_id, last_name
from employee
where last_name like "%i%" and department_id = 1;

/*
The HR department needs a report that displays the last name, department number, and job ID of all
employees whose department location ID is 1700.
*/
select last_name, department_name, job_id
from employee e
inner join departments d on e.department_id = d.department_id
where location_id = 2;

/*
Create a report for HR that displays the last name and salary of every employee who reports to King.
*/
select last_name, salary
from employee
where manager_id = (
	select employee_id
    from employee
    where last_name = "Doe");

/*
Create a  report that displays the employee number,  last name, and salary of all employees who earn
more than the average salary. Sort the results in order of ascending salary.
*/
select employee_id, last_name, salary 
from employee
where salary > (
	select AVG(salary)
    from employee)
order by salary ASC;
