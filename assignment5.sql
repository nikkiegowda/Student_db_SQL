
----------------------------------- Assignments – Operators ------------------------

-- 1.	Create a Student_DB with the tables created from the datasets shared (students.csv files).
CREATE DATABASE IF NOT EXISTS Student_DB ;
USE Student_DB ;
CREATE TABLE students
(
Enrollment_NO int,
Name text,
Class int,
Section varchar(20),
Science_Marks int
);
LOAD DATA INFILE 'C:/Student.csv'
INTO TABLE students 
FIELDS TERMINATED BY ',' 
ENCLOSED BY '"' 
LINES TERMINATED BY '\n' 
IGNORE 1 ROWS;

-- 2.	Write a SQL query to display all the unique values in the "section" column of the "students" table.

SELECT DISTINCT Section
FROM students;

-- 3.	Write a SQL query to display the top 5 highest marks from the "students" table.

SELECT * FROM students
ORDER BY Science_Marks DESC
LIMIT 5;

-- 4.	Write a SQL query to display the number of students in each class from the "students" table.

SELECT Class, COUNT(*) AS "Number of Students"
FROM students
GROUP BY Class;

-- 5.	Write a SQL query to display the average marks of all in each section from the "students" table.

SELECT section, AVG(Science_Marks) AS "Average Marks"
FROM students
GROUP BY section;

-- 6.	Write a SQL query to display the names and marks of all students in the "students" table in descending order of enrollment_no.

SELECT Name, Science_Marks
FROM students
ORDER BY Enrollment_NO DESC;

-- 7.	Write a SQL query to display the names of all students who scored in the "science_marks" and get a marks greater than 60.

SELECT Name
FROM students
WHERE Science_Marks > 60;

