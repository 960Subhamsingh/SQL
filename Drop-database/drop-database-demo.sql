-- Creating a Database

CREATE DATABASE testDB;

-- Using a Database

USE testDB;

-- Creating Sample Table in Newly Created Database

create table students (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50),
	age INT
);
insert into students (id, first_name, last_name, email, gender, age) values (1, 'Bunnie', 'Crysell', 'bcrysell0@prnewswire.com', 'Female', 53);
insert into students (id, first_name, last_name, email, gender, age) values (2, 'Vlad', 'Derry', 'vderry1@studiopress.com', 'Male', 37);
insert into students (id, first_name, last_name, email, gender, age) values (3, 'Ophelie', 'Miko', 'omiko2@archive.org', 'Female', 75);
insert into students (id, first_name, last_name, email, gender, age) values (4, 'Gusta', 'McLoughlin', 'gmcloughlin3@nhs.uk', 'Female', 63);
insert into students (id, first_name, last_name, email, gender, age) values (5, 'Gregor', 'Oriel', 'goriel4@state.gov', 'Male', 24);
insert into students (id, first_name, last_name, email, gender, age) values (6, 'Johanna', 'Morkham', 'jmorkham5@phpbb.com', 'Female', 28);
insert into students (id, first_name, last_name, email, gender, age) values (7, 'Ewen', 'Schachter', 'eschachter6@last.fm', 'Male', 97);
insert into students (id, first_name, last_name, email, gender, age) values (8, 'Gaby', 'Hastelow', 'ghastelow7@1und1.de', 'Male', 12);

-- Viewing Data in Sample Table in Newly Created Database

SELECT * FROM students;

-- Deleting Newly Created Database !!ERROR!!

DROP DATABASE testDB;

-- Switching to master DB 

USE master;

-- Deleting Newly Created Database

DROP DATABASE testDB;
