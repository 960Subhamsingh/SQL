-- View Sample Data

SELECT * FROM students

-- Creating the Stored Procedure

CREATE PROCEDURE callstudents
AS SELECT * FROM students
GO

-- Executing the Stored Procedure

EXEC callstudents

-- Creating A Stored Procedure with One Parameter

CREATE PROCEDURE callstudents_gender @Gender varchar(30)
AS
SELECT * 
FROM students 
WHERE gender = @Gender
GO

-- Executing a Stored Procedure with One Parameter

EXEC callstudents_gender @Gender = 'Male'

-- Creating A Stored Procedure with Multiple Parameters

CREATE PROCEDURE callstudents_gender_age @Gender varchar(30), @Age INTEGER
AS
SELECT * 
FROM students 
WHERE gender = @Gender AND age > @Age
GO

-- Executing A Stored Procedure with Multiple Parameters

EXEC callstudents_gender_age @Gender = 'Female', @Age = 35

-- Deleting Stored Procedures

DROP PROCEDURE callstudents
GO

DROP PROCEDURE callstudents_gender
GO

DROP PROCEDURE callstudents_gender_age
GO





