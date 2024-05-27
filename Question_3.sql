create database employee_database;

use employee_database;
CREATE TABLE Departments (
      department_id INT PRIMARY KEY,
      department_name VARCHAR(100)
    );

    CREATE TABLE Employees (
      employee_id INT PRIMARY KEY,
      name VARCHAR(100),
      age INT,
      department_id INT,
      FOREIGN KEY (department_id) REFERENCES Departments(department_id)
    );
    
select department_name from Departments;

insert into departments (department_id, department_name)
values (1, 'Accounting'),
(2, 'Sales'),
(3, 'Human Resources');

insert into employees (employee_id, name, age, department_id)
values (1, 'Sam Kraft', 23, 2),
(2, 'John Smith', 47, 1),
(3, 'Connor Beckham', 35, 3);

select count(name)
from employees
where department_id = 1;

select count(name)
from employees
where department_id = 2;

select count(name)
from employees
where department_id = 3;

insert into employees (employee_id, name, age, department_id)
values (4, 'Jon Jones', 23, 3);

select e.name as Name, e.age as Age, d.department_id as Department
from employees e, departments d
