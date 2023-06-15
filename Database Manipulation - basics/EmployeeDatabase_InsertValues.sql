use employee_database;

insert into countries values
('CA', 'Canada', 1), 
('GB', 'United Kingdom', 2), 
('JP', 'Japan', 3), 
('AU', 'Australia', 4),
('US', 'United States', 5);

insert into jobs values
('IT_PROG', 'Programmer', 50000, 100000), 
('SA_MAN', 'Sales Manager', 80000, 150000), 
('ACCTANT', 'Accountant', 45000, 90000), 
('HR_REP', 'HR Representative', 40000, 80000), 
('MK_REP', 'Marketing Representative', 40000, 90000), 
('PRG_ANAL', 'Program Analyst', 60000, 110000), 
('FIN_ANLYST', 'Financial Analyst', 55000, 100000);

insert into locations values
(1, '123 Main St', '12345', 'New York City', 'New York', 'US'), 
(2, '456 Elm St', '67890', 'Toronto', 'Ontario', 'CA'), 
(3, '789 Oak St', '54321', 'London', 'England', 'GB'),
(4, '987 Pine St', '13579', 'Tokyo', 'Tokyo', 'JP'),
(5, '654 Maple St', '97531', 'Sydney', 'New South Wales', 'AU');

insert into departments values
(1, 'Sales', 1, 2),
(2, 'Marketing', 2, 3),
(3, 'Finance', 3, 5),
(4, 'Human Resources', 4, 4),
(5, 'Research and Development', 5, 1);

insert into employee values
  (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890', '2012-01-01', 'IT_PROG', 60000.0, 0.05, null, 2),
  (2, 'Jane', 'Smith', 'jane.smith@example.com', '987-654-3210', '2015-02-01', 'SA_MAN', 80000.0, 0.1, null, 1),
  (3, 'Michael', 'Johnson', 'michael.johnson@example.com', '555-123-4567', '2010-03-01', 'ACCTANT', 50000.0, 0.02, null, 4),
  (4, 'Emily', 'Williams', 'emily.williams@example.com', '444-555-6666', '2014-04-01', 'HR_REP', 45000.0, 0.01, null, 5),
  (5, 'David', 'Brown', 'david.brown@example.com', '222-333-4444', '2002-05-01', 'MK_REP', 40000.0, null, null, 2),
  (6, 'Sarah', 'Jones', 'sarah.jones@example.com', '111-222-3333', '2003-06-01', 'PRG_ANAL', 65000.0, null, 1, 1),
  (7, 'Daniel', 'Lee', 'daniel.lee@example.com', '777-888-9999', '2002-07-01', 'FIN_ANLYST', 60000.0, 0.04, 3, 3),
  (8, 'Olivia', 'Miller', 'olivia.miller@example.com', '333-444-5555', '2000-08-01', 'IT_PROG', 55000.0, 0.02, 1, 1),
  (9, 'Andrew', 'Anderson', 'andrew.anderson@example.com', '999-888-7777', '2022-09-01', 'SA_MAN', 85000.0, 0.1, 1, 1),
  (10, 'Sophia', 'Taylor', 'sophia.taylor@example.com', '444-555-6666', '2012-10-01', 'ACCTANT', 48000.0, 0.03, 3, 3),
  (11, 'Jacob', 'Clark', 'jacob.clark@example.com', '222-333-4444', '2009-11-01', 'HR_REP', 40000.0, null, 4, 4),
  (12, 'Emma', 'Moore', 'emma.moore@example.com', '111-222-3333', '2005-12-01', 'MK_REP', 42000.0, null, null, 2),
  (13, 'Joshua', 'Lee', 'joshua.lee@example.com', '777-888-9999', '2001-01-01', 'PRG_ANAL', 68000.0, 0.05, 1, 1),
  (14, 'Ava', 'Davis', 'ava.davis@example.com', '333-444-5555', '2016-02-01', 'FIN_ANLYST', 65000.0, 0.04, 3, 3),
  (15, 'William', 'Thomas', 'william.thomas@example.com', '999-888-7777', '2023-03-01', 'IT_PROG', 57000.0, null, 1, 1),
  (16, 'Mia', 'Harris', 'mia.harris@example.com', '444-555-6666', '2022-04-01', 'SA_MAN', 90000.0, 0.12, 1, 1),
  (17, 'James', 'Martin', 'james.martin@example.com', '222-333-4444', '2004-05-01', 'ACCTANT', 52000.0, 0.03, 3, 3),
  (18, 'Abigail', 'Thompson', 'abigail.thompson@example.com', '111-222-3333', '2022-06-01', 'HR_REP', 41000.0, 0.02, 4, 4),
  (19, 'Benjamin', 'Walker', 'benjamin.walker@example.com', '777-888-9999', '2007-07-01', 'MK_REP', 43000.0, 0.03, 2, 2),
  (20, 'Charlotte', 'Roberts', 'charlotte.roberts@example.com', '333-444-5555', '2002-08-01', 'PRG_ANAL', 70000.0, 0.05, 1, 1);
  
insert into job_history values
  (1, '2021-01-01', '2022-01-01', 'IT_PROG', 1),
  (2, '2021-02-01', '2022-02-01', 'SA_MAN', 1),
  (3, '2021-03-01', '2022-03-01', 'ACCTANT', 3),
  (4, '2021-04-01', '2022-04-01', 'HR_REP', 4),
  (5, '2021-05-01', '2022-05-01', 'MK_REP', 2),
  (6, '2021-06-01', '2022-06-01', 'PRG_ANAL', 1),
  (7, '2021-07-01', '2022-07-01', 'FIN_ANLYST', 3),
  (8, '2021-08-01', '2022-08-01', 'IT_PROG', 1),
  (9, '2021-09-01', '2022-09-01', 'SA_MAN', 1),
  (10, '2021-10-01', '2022-10-01', 'ACCTANT', 3),
  (11, '2021-11-01', '2022-11-01', 'HR_REP', 4),
  (12, '2021-12-01', '2022-12-01', 'MK_REP', 2),
  (13, '2022-01-01', '2023-01-01', 'PRG_ANAL', 1),
  (14, '2022-02-01', '2023-02-01', 'FIN_ANLYST', 3),
  (15, '2022-03-01', '2023-03-01', 'IT_PROG', 1),
  (16, '2022-04-01', '2023-04-01', 'SA_MAN', 1),
  (17, '2022-05-01', '2023-05-01', 'ACCTANT', 3),
  (18, '2022-06-01', '2023-06-01', 'HR_REP', 4),
  (19, '2022-07-01', '2023-07-01', 'MK_REP', 2),
  (20, '2022-08-01', '2023-08-01', 'PRG_ANAL', 1);
  
alter table departments
add foreign key(manager_id) references employee(employee_id);
