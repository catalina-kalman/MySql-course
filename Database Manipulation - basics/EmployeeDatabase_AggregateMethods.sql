/*
write a query display total number of employees working in "IT" Department
*/
use employee_database;

select count(*)
from employee
where department = "Finance";

/*
1.	Find the highest, lowest, sum, and average salary of all employees.
Label the columns Maximum, Minimum, Sum, and Average, respectively.
*/
select max(salary) "Maximum", min(salary) "Minimum", sum(salary) "Sum", avg(salary) "Average"
from employee;

/*
2.	Modify the query 1 to display the minimum, maximum, sum, and average
salary for each job type.
*/
select job_id, max(salary) "Maximum", min(salary) "Minimum", sum(salary) "Sum", avg(salary) "Average"
from employee
group by job_id;

/*
3.	Write a query to display the number of people with the same job.
*/
select job_id, count(*)
from employee
group by job_id;

/*
4.	Determine the number of managers without listing them.
*/
select count(*)
from employee
where manager_id is null;

select count(distinct manager_id)
from employee
where manager_id is not null;

select manager_id
from employee
/*
5.	Find the difference between the highest and lowest salaries.
Label the column DIFFERENCE.
*/
select max(salary)-min(salary) "DIFFERENCE"
from employee;
