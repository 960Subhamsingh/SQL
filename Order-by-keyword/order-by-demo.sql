-- Viewing the sample table data

SELECT * FROM SAMPLE_DATA;

-- ORDER BY KEYWORD (Order by Age Ascending)

SELECT * 
FROM SAMPLE_DATA
ORDER BY age;
-- NOTE : Repeat data is ordered by existing order

-- ORDER BY KEYWORD DESC (Order by Age Descending)

SELECT * 
FROM SAMPLE_DATA
ORDER BY age DESC;

-- COMPOUND ORDER BY STATEMENTS

SELECT *
FROM SAMPLE_DATA
ORDER BY age, first_name;

SELECT id, age, first_name
FROM SAMPLE_DATA
ORDER BY age, first_name;

SELECT id, age, first_name
FROM SAMPLE_DATA
ORDER BY age;

SELECT id, age, first_name
FROM SAMPLE_DATA
ORDER BY age, first_name DESC;

SELECT id, age, first_name
FROM SAMPLE_DATA
ORDER BY age DESC, first_name DESC;


-- ORDER BY Keyword used with WHERE Clause

SELECT * FROM SAMPLE_DATA
WHERE age > 30
ORDER BY age;


-- ORDER OF KEYWORDS IN SQL STATEMENTS 

-- WITH. To define common table expressions
-- SELECT. To specify columns
-- FROM. To specify table sources
-- WHERE. To specify filter conditions
-- GROUP BY. To specify the aggregation order desired
-- HAVING. To specify any aggregation filters
-- ORDER BY. To specify the output order
-- (with). Varies by dbms, some keywords which limit output or determine access paths or isolation levels
-- UNION / INTERSECT / EXCEPT. Additional selections to modify the result set
-- Note some dbms would only allow a single ORDER BY clause at the end of thw whole statement
