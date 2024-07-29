show databases;

-- Create a database with a table named students. 
create database students;
show databases;

-- The table has fields s_id (student ID), s_name (student name), and s_age (student age).
use students;
create table student_info(s_id int primary key, s_name varchar(20),s_age int) 
select * from student_info;

-- Create the table and insert the following values: (1, "Ram", 21) and (2, "Shamam", 21). 
insert into student_info values(1, "Ram", 21);
insert into student_info values(2, "Shamam", 21);

-- Write a SQL query to display all records present in the students table.
select * from student_info;




