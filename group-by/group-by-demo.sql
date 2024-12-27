-- View Sample Data from Mockaroo

SELECT * FROM SAMPLE_DATA;

-- Basic Usage + Syntax of GROUP BY Statement

Select Count(id), country FROM SAMPLE_DATA
GROUP BY country;

-- Adding ALIAS and ORDER BY

Select country, Count(id) AS Count FROM SAMPLE_DATA
GROUP BY country
ORDER BY Count(id) DESC;


-- Alternate Usage

SELECT credit_card, Count(id) FROM SAMPLE_DATA
GROUP BY credit_card;
