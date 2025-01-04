-- This table was created on https://www.mockaroo.com
-- View Sample Data

SELECT * 
FROM SAMPLE_DATA;

-- Basic COUNT() Function Usage

SELECT COUNT(*) 
FROM SAMPLE_DATA;

SELECT COUNT(id) 
FROM SAMPLE_DATA;

-- COUNT() Function with Filtering using WHERE CLAUSE

SELECT COUNT(id) 
FROM SAMPLE_DATA
WHERE country = 'Poland';

SELECT COUNT(*) 
FROM SAMPLE_DATA
WHERE country = 'Poland';
