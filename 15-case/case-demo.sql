-- View the Sample Data in the Table

SELECT * FROM STUDENTS;

-- Basic Usage of the Case Statement 

SELECT first_name,last_name, age,
CASE
    WHEN age > 50 THEN 'Older'
    WHEN age <= 50 THEN 'Younger'
    ELSE 'They are alien'
END 
FROM Students;

-- With an Alias for the Case Column


SELECT first_name,last_name, age,
CASE
    WHEN age > 50 THEN 'Older'
    WHEN age <= 50 THEN 'Younger'
    ELSE 'They are alien'
END AS 'age category'
FROM Students;

-- The Column on which Case is being performed does not need to be queries

SELECT first_name,last_name,
CASE
    WHEN age > 50 THEN 'Older'
    WHEN age <= 50 THEN 'Younger'
    ELSE 'They are alien'
END AS 'age category'
FROM Students;
