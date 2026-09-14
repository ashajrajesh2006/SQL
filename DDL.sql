-- Data Definition Language
-- 1) Creating a Database
-- Create a database named 'practice_db'
CREATE DATABASE practice_db;

-- Switch to the new database
USE practice_db;
SHOW databases;
-- 2) Creating Tables
-- Create a table named 'students'
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,  -- Unique ID, auto-increment
    first_name VARCHAR(50) NOT NULL,            -- Cannot be NULL
    last_name VARCHAR(50),                      -- Optional
    email VARCHAR(100) UNIQUE,                  -- Must be unique
    enrollment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP   -- Default to today's date
);
SELECT * from students;
-- 3) Altering Tables
-- Add a new column 'phone_number' to the 'students' table
ALTER TABLE students
ADD phone_number VARCHAR(15);

-- Modify the 'last_name' column to be NOT NULL
ALTER TABLE students 
MODIFY last_name VARCHAR(50) NOT NULL;

-- Rename the 'students' table to 'university_students'
ALTER TABLE students 
RENAME TO university_students;

-- 4) Dropping Tables
-- Drop the table 'university_students'
DROP TABLE university_students;

-- 5) Creating Constraints
-- Create a table with constraints
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL UNIQUE,
    credits INT CHECK (credits BETWEEN 1 AND 5)  -- Ensure credits are between 1 and 5
);

-- Create a table with a foreign key
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    course_id INT,
    FOREIGN KEY (student_id) REFERENCES university_students(student_id),
    FOREIGN KEY (course_id) REFERENCES courses(course_id)
);

-- Remove all rows from the 'students' table
TRUNCATE TABLE students;

-- To delete single column
ALTER TABLE table_name
DROP COLUMN column_name;

select * from university_students;

-- 1) Insert 
-- Insert a single row into the 'students' table
INSERT INTO university_students (first_name, last_name, email, enrollment_date,phone_number) 
VALUES ('John', 'Doe', 'john.doe@example.com', '2024-11-21', '044 2567836');

select * from university_students;

-- Insert multiple rows
INSERT INTO university_students (first_name, last_name, email, enrollment_date,phone_number) 
VALUES 
('Jane', 'Smith', 'jane.smith@example.com', '2024-11-20','9812567836'),
('Alice', 'Johnson', 'alice.johnson@example.com', '2024-11-19','9872567836');

select * from university_students;

-- 2) Update Data

-- Update the email for a specific student
UPDATE university_students 
SET email = 'john.newemail@example.com' 
WHERE student_id = 1;

-- Disable safe update mode for this session
SET SQL_SAFE_UPDATES = 0;