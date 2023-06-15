/*
write a query display total number of employees working in "IT" Department
*/
use employee_database;

select count(*)
from employee
where department = "Finance"

