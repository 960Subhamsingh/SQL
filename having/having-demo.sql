-- View Sample Data 

SELECT * FROM SAMPLE_DATA;

-- Basic Usage + Syntax of GROUP BY Statement

SELECT COUNT(id), country
FROM SAMPLE_DATA
GROUP BY country
HAVING COUNT(id) > 5;

-- Alternate Use

SELECT COUNT(id), credit_card
FROM SAMPLE_DATA
GROUP BY credit_card
HAVING COUNT(id) > 25;


