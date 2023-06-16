/*
The staff in the HR department wants to hide some of the data in the EMPLOYEES table. They want a view called EMPLOYEES_VU based on
the employee numbers, employee names, and department numbers from the EMPLOYEES table. They want the heading for the employee name to be EMPLOYEE.
*/
use employee_database;

drop view if exists EMPLOYEES_VU;

create view EMPLOYEES_VU
as
select employee_id, concat(first_name, " ", last_name) "employee", department_id from employee;
/*
Confirm that the view works. Display the contents of the EMPLOYEES_VU view. 
*/

select *
from EMPLOYEES_VU;

/*
Using your EMPLOYEES_VU view, write a query for the HR department to display all employee names and department numbers.
*/

select employee, department_id
from EMPLOYEES_VU;

/*
Department 4 needs access to its employee data. Create a view named DEPT50 that contains the employee numbers,
employee last names, and department numbers for all employees in department 4. You have been asked to label the view columns
EMPNO, EMPLOYEE, and DEPTNO. For security purposes, do not allow an employee to be reassigned to another department through the view.
*/
drop view if exists DEPT50;

create view DEPT50 (EMPNO, EMPLOYEE, DEPTNO)
as
select employee_id, last_name, department_id
from employee
where department_id = 4;
/*
Display the structure and contents of the DEPT50 view.
*/
describe DEPT50;

select * from DEPT50;