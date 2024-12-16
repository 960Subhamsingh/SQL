-- use 'system' user
-- 1. Create an employee table.
drop table emp; 

CREATE TABLE emp (
    empid      NUMBER(3),
    fname      VARCHAR2(20),
    lname      VARCHAR2(20),
    salary     NUMBER(6),
    deptid     NUMBER(2),
    job        VARCHAR2(20),
    jobid      NUMBER(2),
    dob        DATE,
    experience NUMBER(2),
    reportto   VARCHAR2(20),
    reportid   NUMBER(3)
);

desc EMP;

INSERT INTO emp VALUES (
    163,
    'Arjun',
    'Kumar',
    4000,
    20,
    'PM',
    12,
    TO_DATE('2002-01-28', 'yyyy-mm-dd'),
    12,
    'Ram',
    18
);

INSERT INTO emp VALUES (
    210,
    'subham',
    'Kumar',
    5000,
    13,
    'Accountant',
    35,
    TO_DATE('1997-05-12', 'yyyy-mm-dd'),
    5,
    'Payam',
    89
);

INSERT INTO emp VALUES (
    092,
    'Raj',
    'Kumar',
    3000,
    47,
    'PM',
    12,
    TO_DATE('2000-01-03', 'yyyy-mm-dd'),
    1,
    'Anil',
    121
);

INSERT INTO empVALUES (
    169,'Mohan','Kumar',1500,10,'Accountant',
    35,TO_DATE('1980-05-17', 'yyyy-mm-dd'),6,'Susan',73
);

INSERT INTO emp VALUES (
    001,'Cara','Dunes',7000,39,'Manager',01,TO_DATE('1999-03-14', 'yyyy-mm-dd'),4,
    'Ram',18
);

INSERT INTO emp VALUES (
    311,'Moff','Gideon',2000,15,'Marketing',34,TO_DATE('1991-05-18', 'yyyy-mm-dd'),7,'Ram',18
);

INSERT INTO emp VALUES (
    401,'Master','Luke',7777,48,'IT',31,TO_DATE('1969-07-21', 'yyyy-mm-dd'),2,'Ram',18
);

INSERT INTO emp VALUES (
    163,'Shyam','Ren',3332,42,'Technician',64,TO_DATE('1996-11-05', 'yyyy-mm-dd'),
    3,'Susan',73
);

/* 2. Display all employee names and salary whose salary is greater than
minimum salary of the company and job title starts with 'M'. */

SELECT
    concat(fname, lname),
    salary
FROM
    emp
WHERE
        salary > (
            SELECT
                MIN(salary)
            FROM
                emp
        )
    AND job LIKE 'M%';

-- 3. Issue a query to find all the employees who work in the same job as Arjun
SELECT
    *
FROM
    emp
WHERE
    job IN (
        SELECT
            job
        FROM
            emp
        WHERE
            fname = 'Arjun'
    );

4. Display the names and dob of all employee who were born in january.

SELECT
    ( fname
      || ' '
      || lname ) AS Name,
    dob
FROM
    emp
WHERE
    to_char(dob, 'mon') = 'jan';

5. Display the least experienced employee details.

SELECT
    *
FROM
    emp
WHERE
    experience = (
        SELECT
            MAX(experience)
        FROM
            emp
    );
    
6. Write a query to display the name ( first name and last name ) for those employees who gets more salary than the employee whose ID is 163

SELECT
    *
FROM
    emp
WHERE
    salary IN (
        SELECT
            salary
        FROM
            emp
        WHERE
            empid > 163
    );

select * from emp;
7. Write a query to display the name ( first name and last name ),salary, department id, job id for those employees who works in the
same designation as the employee works whose id is 163.

SELECT Fname,Lname,Salary,DeptId,JobId , job FROM EMP WHERE Job in (SELECT JOB FROM EMP WHERE EmpId = 163);

8. Write a query to display the employee id, employee name (first nameand last name ) for all employees who earn more than the average
salary.

SELECT
    empid,
    initcap(fname
            || ' '
            || lname) AS name
FROM
    emp
WHERE
    salary > (
        SELECT
            AVG(salary)
        FROM
            emp
    );

9. Write a query to display the employee name ( first name and last name ), employee id and salary of all employees who report to Payam.

SELECT EmpId, initcap( ( fname
                           || ' '
                           || lname ) AS NAME , SALARY FROM EMP WHERE ReportTo = 'Payam'; 

10.Write a query to display all the information of an employee whose salary and reporting person id is 3000 and 121 respectively.

SELECT
    *
FROM
    emp
WHERE
        salary = 3000
    AND reportid = 121;

11.Write a query in SQL to display the full name (first and last name) of manager who is supervising 4 or more employees.

SELECT DISTINCT
    ( reportto )
FROM
    emp a
WHERE
    4 <= (
        SELECT
            COUNT(*)
        FROM
            emp
        WHERE
            reportto = a.reportto
    );

12.Write a query in SQL to display the details of departments managed by Ram.

SELECT
    *
FROM
    emp
WHERE
    reportto = 'Ram';