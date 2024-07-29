-- 1.
-- Create a Database and Tables
-- Create a new database called `school_management`.
-- Within the `school_management` database, create the following tables:
-- `students` (student_id, first_name, last_name, email, phone_number, date_of_birth)
-- `courses` (course_id, course_name, course_description, credits)

create database school_management;

use school_management;

create table students(student_id int primary key, first_name varchar(20), last_name varchar(20), email varchar(200), phone_number int, date_of_birth date);

create table courses (course_id int primary key, course_name varchar(20), course_description varchar(200), credits int)


-- 2.Modify Table Structure
-- Add a new column `grade` (VARCHAR(2)) to the `students` table.
-- Change the data type of the `phone_number` column in the `students` table to VARCHAR(15).
 
ALTER TABLE students ADD COLUMN grade VARCHAR(2);
ALTER TABLE students MODIFY COLUMN phone_number VARCHAR(15);


-- Insert Data into Tables
-- Insert at least 3 records into the `students` table.
-- Insert at least 5 records into the `courses` table.

INSERT INTO students (student_id, first_name, last_name, email, phone_number, date_of_birth) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 1234567890, '2000-01-15'),
(2, 'Jane', 'Smith', 'jane.smith@example.com', 2345678901, '1999-03-22'),
(3, 'Alice', 'Johnson', 'alice.johnson@example.com', 3456789012, '2001-05-30');

INSERT INTO courses (course_id, course_name, course_description, credits) VALUES
(1, 'Intro to Prog', 'An introductory course on programming concepts.', 3),
(2, 'Data Struct', 'Covers various data structures and their applications.', 4),
(3, 'DB Systems', 'Fundamentals of database design and SQL.', 3),
(4, 'Operating Sys', 'Introduction to operating systems and their functionalities.', 4),
(5, 'Soft Eng', 'Principles and practices of software engineering.', 3);

-- Query Data
-- Write a SELECT statement to retrieve all students' first names, last names, and email addresses.
select first_name,last_name,email from students;

-- Drop the `students` table from the `school_management` database.
-- Drop the `school_management` database 
DROP TABLE school_management.students;
DROP DATABASE school_management;


