-- View Sample Data

SELECT * FROM SAMPLE_DATA;

-- Basic Usage + Syntax of BETWEEN OPERATOR

SELECT * FROM SAMPLE_DATA
WHERE age BETWEEN 20 and 55;

-- NOTE : BEGIN AND END VALUES ARE INCLUDED

-- Can be Used for Text values as well as Dates

SELECT first_name FROM SAMPLE_DATA
WHERE first_name BETWEEN 'Abraham' and 'George';

-- Basic Usage + Syntax of NOT BETWEEN OPERATOR

SELECT * FROM SAMPLE_DATA
WHERE age NOT BETWEEN 20 and 55;

SELECT first_name FROM SAMPLE_DATA
WHERE first_name BETWEEN 'Abraham' and 'George';

