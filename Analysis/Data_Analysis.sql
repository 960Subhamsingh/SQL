-- show the location data
SELECT
    *
FROM
    locations;

-- show the department data

SELECT
    *
FROM
    departments;

-- show the jos data

SELECT
    *
FROM
    jobs;

-- show the employees data
SELECT
    *
FROM
    employees;

-- show the job_history data
SELECT
    *
FROM
    job_history;

-- show the regions data
SELECT
    *
FROM
    regions;

-- show the countries data
SELECT
    *
FROM
    countries;

/************************** Find employee and department details based on specific condition **************************/

-- Find department details under postal code 98199.
SELECT
    *
FROM
    locations
WHERE
    postal_code = '98199';

SELECT
    *
FROM
    departments
WHERE
    location_id = 1700;


-- Find department name under postal code 98199.
SELECT
    department_name
FROM
    departments
WHERE
    location_id = 1700;

-- Find department details which does not belong to postal code 98199.
SELECT
    department_name
FROM
    departments
WHERE
    location_id != 1700;


-- Find employees details whose salary is more then 10000.
SELECT
    *
FROM
    employees
WHERE
    salary > 10000;

-- Find employee name, email and phone number where salary is more then 10000.
SELECT
    first_name,
    last_name,
    email,
    phone_number
FROM
    employees
WHERE
    salary > 10000;


-- Find employee details who belongs to marketing department and has salary less then or equal to 6000.

SELECT
    *
FROM
         departments
    JOIN employees ON employees.employee_id = departments.department_id
WHERE
        departments.department_name = 'Marketing'
    AND employees.salary <= 6000;

SELECT
    *
FROM
    departments
WHERE
    department_name = 'Marketing';

SELECT
    *
FROM
    employees
WHERE
        department_id = 20
    AND salary <= 6000;



/************************** Display records in a ordered manner and deal with NULL values. **************************/

-- Find employees details where commission pct is available.
SELECT
    *
FROM
    employees
WHERE
    commission_pct IS NOT NULL;


-- Find employee details where manager_id is not available.
SELECT
    *
FROM
    employees
WHERE
    manager_id IS NULL;


-- List down employee name in ascending order.
SELECT
    first_name
    || ' '
    || last_name
FROM
    employees
ORDER BY
    first_name,
    last_name;


-- Find locations of UK country in ascending order of postal code.
SELECT
    *
FROM
    locations
WHERE
    country_id = 'UK'
ORDER BY
    postal_code;


-- Find locations of UK country in descending order of postal code.
SELECT
    *
FROM
    locations
WHERE
    country_id = 'UK'
ORDER BY
    postal_code DESC;


-- Find locations of UK country in ascending order of postal code but nulls should be at top.
SELECT
    *
FROM
    locations
WHERE
    country_id = 'UK'
ORDER BY
--    postal_code  NULLS first  ;


-- Find all the locations and arrange country in ascending and city in descending order.
SELECT
    *
FROM
    locations
ORDER BY
    country_id ASC,
    city DESC;


/************************** Search for specified pattern in a column. (Like, wildcards, in) **************************/


-- Find employees who work as President, Administration Vice President and Administration Assistant.
SELECT
    *
FROM
    jobs
WHERE
    job_title IN ( 'President', 'Administration Vice President', 'Administration Assistant' );

SELECT
    first_name,
    last_name,
    email,
    job_id
FROM
    employees
WHERE
    job_id IN ( 'AD_ASST', 'AD_PRES', 'AD_VP' );
    
--Find employees who does not work as Finance Manager, Accountant and Shipping Clerk.

SELECT
    *
FROM
    jobs
WHERE
    job_title
in('Finance Manager', 'Accountant', 'Shipping Clerk');

SELECT
    first_name,
    last_name,
    email,
    job_id
FROM
    employees
WHERE
    job_id NOT IN ( 'FI_MGR', 'FI_ACCOUNT', 'SH_CLERK' );


-- Find employees whose job id starts with AD.
SELECT
    first_name,
    last_name,
    email,
    job_id
FROM
    employees
WHERE
    job_id LIKE 'AD%';


--Find all the employees whose job id does not starts with SA

SELECT
    first_name,
    last_name,
    email,
    job_id
FROM
    employees
WHERE
    job_id NOT LIKE 'SA%';


--Find all the employees whose job id neither starts with SA or SH
SELECT
    first_name,
    last_name,
    email,
    job_id
FROM
    employees
WHERE
    job_id NOT LIKE 'SA%'
    AND job_id NOT LIKE 'SH%';


--Find all the locations which starts with S
SELECT
    *
FROM
    locations
WHERE
    city LIKE 'S%';


--Find all the locations where street address has Rd in it.
SELECT
    *
FROM
    locations
WHERE
    street_address LIKE '%Rd%';



/************************** Add, Update and Delete employees **************************/

-- Add new employee in the table.
SELECT
    *
FROM
    employees
ORDER BY
    employee_id DESC;

INSERT INTO employees (
    employee_id,
    first_name,
    last_name,
    email,
    phone_number,
    hire_date,
    job_id,
    salary,
    commission_pct,
    manager_id,
    department_id
) VALUES (
    207,
    'Rahul',
    'Dravid',
    'rd@gmail.comm',
    '515.123.9999',
    TO_DATE('29-NOV-2021', 'dd-MON-yyyy'),
    'HR_REP',
    24000,
    NULL,
    101,
    40
);
   

-- Update the existing record which has incorrect data.
UPDATE employees
SET
    email = 'rd@gmail.com'
WHERE
    employee_id = 207;


--Update COMMISSION_PCT to 0 where COMMISSION_PCT is not available.
UPDATE employees
SET
    commission_pct = 0
WHERE
    commission_pct IS NULL;


-- Remove the employee from table.
DELETE FROM employees
WHERE
    employee_id = 207;


-- Create backup table of employee.
CREATE TABLE employee_backup
    AS
        (
            SELECT
                *
            FROM
                employees
        );


/************************** Create backup of employee table and Commit and Rollback data **************************/


-- Create backup table of employee.
CREATE TABLE employee_backup
    AS
        (
            SELECT
                *
            FROM
                employees
        );

SELECT
    *
FROM
    employee_backup;


--Remove all the records from table.
TRUNCATE TABLE employee_backup;


--Insert all the records of employee table into backup table.
INSERT INTO employee_backup
    SELECT
        *
    FROM
        employees;

COMMIT;


--Drop table.
DROP TABLE employee_backup;

-- Find how many employees in each departments

SELECT
    employees.employee_id,
    departments.department_id,
    departments.department_name,
    initcap(employees.first_name) first_name,
    employees.salary,
    COUNT(*)                      AS total
FROM
         employees
    INNER JOIN departments ON employees.employee_id = departments.department_id
GROUP BY
    initcap(employees.first_name),
    employees.salary,
    employees.employee_id,
    departments.department_id,
    departments.department_name;
