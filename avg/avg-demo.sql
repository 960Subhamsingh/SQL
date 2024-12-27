-- View Sample Data

SELECT * 
FROM SAMPLE_DATA;

-- Basic Usage of the AVG() Function

SELECT AVG(age)
FROM SAMPLE_DATA;

-- Basic Usage of the AVG() Function with ALIAS

SELECT AVG(age) AS 'AVERAGE AGE'
FROM SAMPLE_DATA;

-- AVG() Function with Filtering

SELECT AVG(age) AS 'AVERAGE RUSSIAN AGE'
FROM SAMPLE_DATA
WHERE country = 'Russia';

-- NESTED AVG() FUNCTION : Show persons who are older than the average age of the table 

SELECT * 
FROM SAMPLE_DATA
WHERE AGE > (SELECT AVG(age) FROM SAMPLE_DATA);
