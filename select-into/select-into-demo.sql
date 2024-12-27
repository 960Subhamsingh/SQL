-- View Sample Data from the students table

SELECT * FROM students;

-- Basic SELECT INTO usage 

SELECT *
INTO students2
FROM students;

SELECT * FROM students2;

-- Using SELECT INTO and filtering with WHERE Clause

SELECT * 
INTO girlstudents
FROM students
WHERE gender = 'Female';

SELECT * FROM girlstudents;

-- Using SELECT INTO With Specifc Columns

SELECT first_name, last_name
INTO names
FROM students;

SELECT * FROM names;
