create database fitness_center;

select * from members;
select * from workoutsessions;

use fitness_center;
CREATE TABLE Members (
    id INT auto_increment KEY,
    name VARCHAR(255) NOT NULL,
    age INT);
    

CREATE TABLE WorkoutSessions (
    session_id INT auto_increment PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);

insert into members (name, age)
values('Sam Kraft', 23),
('Joe Davis', 50),
('Connor Beckham', 30),
('Aubrey Plaza', 19);

insert into workoutsessions (member_id, session_date, session_time, activity)
values (1, '2024-06-09', '11:30', 'Weights'),
(3, '2024-12-24', '5:00', 'Cardio');

update workoutsessions
set session_time = '3:00'
where session_id = 2;

set sql_safe_updates = 0;
delete from members
where name = 'Joe Davis';
set sql_safe_updates = 1