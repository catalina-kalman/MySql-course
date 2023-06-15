/*
1.	Write a query for the HR department to produce the addresses of all
the departments. Use the LOCATIONS and COUNTRIES tables. Show the location
ID, street address, city, state or province, and country in the output.
*/
use employee_database;

select department_name, d.location_id, street_adress, city, state_province, c.country_name
from departments d
inner join locations l on d.location_id = l.location_id
inner join countries c on c.country_id = l.country_id;

/*
2.	Write a query to display the last name, department number, and
department name for all employees.
*/
select last_name, e.department_id, d.department_name
from employee e
inner join departments d on e.department_id = d.department_id;

/*
3.	The HR department needs a report of employees in Toronto.
Display the last name, job, department number, and department name
for all employees who work in Toronto
*/
select last_name, j.job_title, e.department_id, d.department_name
from employee e
inner join departments d on e.department_id = d.department_id
inner join jobs j on e.job_id = j.job_id
inner join locations l on d.location_id = l.location_id
where city = "Toronto";