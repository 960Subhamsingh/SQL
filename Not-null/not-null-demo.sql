-- Creating a sample Table Students

create table students (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	age INT
);

-- Inserting Data with Null Values into Students

INSERT INTO students VALUES (1,'john','jr','jj@gmail.com','Male',23);

INSERT INTO students VALUES ( NULL,'jojo','jr','jj@gmail.com','Female',33);

SELECT * FROM students;

-- Creating sample table students2 with ID column having constraint not null

create table students2 (
	id INT NOT NULL,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	age INT
);

-- Inserting Data into Students2

INSERT INTO students2 VALUES (1,'john','jr','jj@gmail.com','Male',23);

-- Trying to insert data with ID column having a null value

INSERT INTO students2 VALUES ( NULL,'jojo','jr','jj@gmail.com','Female',33);

-- Creating sample table students3 with multiple columns having not null constraint

create table students3 (
	id INT NOT NULL,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	gender VARCHAR(50),
	age INT
);

-- Trying to insert data with Null values int o students3

INSERT INTO students3 VALUES (1,'john','jr','jj@gmail.com','Male',23);

INSERT INTO students3 VALUES (2,NULL,'jr','jj@gmail.com','Male',23);
