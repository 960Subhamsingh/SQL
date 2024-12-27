-- Viewing sample data tables

SELECT * FROM SAMPLE_DATA;

-- AND OPERATOR (Display all persons who are male and are older than 30)

SELECT * FROM SAMPLE_DATA
WHERE gender='MALE' AND age>30;

-- OR OPERATOR (Display all persons who are male or are older than 30)

SELECT * FROM SAMPLE_DATA
WHERE gender='MALE' OR age>30;

-- NOT OPERATOR (Display all persons who are not male)

SELECT * FROM SAMPLE_DATA
WHERE NOT gender='MALE';

-- COMPOUND USAGE OF OPERATORS

SELECT * FROM SAMPLE_DATA
WHERE NOT gender='MALE';

SELECT * FROM SAMPLE_DATA
WHERE NOT gender='MALE' AND age > 50;

SELECT * FROM SAMPLE_DATA
WHERE gender='MALE' AND NOT age > 50;

SELECT * FROM SAMPLE_DATA
WHERE gender='MALE' AND age>30 AND currency='CNY';

SELECT * FROM SAMPLE_DATA
WHERE gender='MALE' OR age>30 OR currency='CNY';

SELECT * FROM SAMPLE_DATA
WHERE gender='MALE' AND age>30 OR currency='CNY';

SELECT * FROM SAMPLE_DATA
WHERE gender='MALE' OR age>30 AND currency='CNY';
