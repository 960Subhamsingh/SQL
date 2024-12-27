-- Basic Alias Usage in SQL Server (T-SQL)

SELECT country AS Nationality
FROM SAMPLE_DATA;

-- If you want the Alias to contain spaces you must enclose the alias within [] or ''

SELECT first_name AS [First Name]
FROM SAMPLE_DATA;

SELECT first_name AS [First Name], last_name AS 'Last Name'
FROM SAMPLE_DATA;

-- Combining Columns and Giving the resulting column an alias

SELECT first_name + ' ' + last_name AS [Full Name]
FROM SAMPLE_DATA;

