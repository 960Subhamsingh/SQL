SELECT * FROM MEMBERS;

create table members2 (
	id INT,
	first_name VARCHAR(50),
	last_name VARCHAR(50),
	email VARCHAR(50),
	gender VARCHAR(50)
);

SELECT * FROM members2;

INSERT INTO members2
SELECT * FROM members;

SELECT * FROM member_details;

INSERT INTO member_details
SELECT first_name, last_name, email FROM MEMBERS;
