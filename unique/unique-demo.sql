-- Create A sample table students without constraints

create table students (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	age INT
);

-- Inserting Data with non unique values in the id column

INSERT INTO students VALUES (1,'john','jr','jj@gmail.com','Male',23);

INSERT INTO students VALUES (1,'rose','byrne','rb@gmail.com','Female',33);

SELECT * FROM students;

-- Create Sample table students2 with unique. constraint specified on id column

create table students2 (
	id INT UNIQUE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	age INT
);

-- Inserting NON UNIQUE Values into students2 !!ERROR!!

INSERT INTO students2 VALUES (1,'john','jr','jj@gmail.com','Male',23);

INSERT INTO students2 VALUES (1,'rose','byrne','rb@gmail.com','Female',33);

INSERT INTO students2 VALUES (NULL,'rose','byrne','rb@gmail.com','Female',33);

SELECT * FROM students2;

-- Creating sample table students 3 with combined not null and unique constraint on id column and another unique constraint on email

create table students3 (
	id INT NOT NULL UNIQUE,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50) UNIQUE,
	gender VARCHAR(50),
	age INT
);

-- Inserting data into students3

INSERT INTO students3 VALUES (1,'john','jr','jj@gmail.com','Male',23);

INSERT INTO students3 VALUES (NULL,'rose','byrne','rb@gmail.com','Female',33);

INSERT INTO students3 VALUES (2,'rose','byrne','rb@gmail.com','Female',33);

INSERT INTO students3 VALUES (4,'rohan','bal','rb@gmail.com','Male',43);
