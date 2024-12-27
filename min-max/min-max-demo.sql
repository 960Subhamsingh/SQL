-- View Sample Data

SELECT * FROM SAMPLE_DATA;

-- Basic MIN() Function Usage

SELECT MIN(age) 
FROM SAMPLE_DATA;

-- Basic MAX() Function Usage

SELECT MAX(age) 
FROM SAMPLE_DATA;

-- MIN() Function with an ALIAS

SELECT MIN(age) AS 'YOUNGEST AGE' 
FROM SAMPLE_DATA;

-- MAX() Function with an ALIAS

SELECT MAX(age) AS 'OLDEST AGE' 
FROM SAMPLE_DATA;

-- MIN() Function filtered with WHERE Clause

SELECT MIN(age) AS 'YOUNGEST CHINESE AGE' 
FROM SAMPLE_DATA
WHERE country='China';

-- MAX() Function filtered with WHERE Clause

SELECT MAX(age) AS 'OLDEST MASTERCARD CUSTOMER AGE' 
FROM SAMPLE_DATA
WHERE credit_card='maestro';

-- Trying to retrieve name of youngest person **INCORRECT METHOD**

SELECT MIN(age), first_name FROM SAMPLE_DATA;

-- Retreiving data related to min or max row using nested query.

SELECT first_name, age 
FROM SAMPLE_DATA
WHERE age = (SELECT MIN(age) FROM SAMPLE_DATA);
