- ***select all the records have dept no=10.***
```
SELECT
    *
FROM
    dept
WHERE
    deptno = 10;
```

- ***Select the ename from su54 table where the empno =101.***
```
SELECT
    "Ename"
FROM
    su54
WHERE
    "Emp No" = 101;
```

- ***List employees not belonging to dept 30,40 or 10***
```
SELECT
    "Ename"
FROM
    emp40
WHERE
    "Dept_No" NOT IN ( 30, 40, 10 );
```
- ***ist the different designation in the company.***
```
SELECT
    "Ename"
FROM
    emp40
WHERE
    "Designation" IN ( 'Salesman', 'Analyst' );
```
- ***List the emp40 whose date are belong to 1981-09-30***
```
SELECT
    *
FROM
    emp40
WHERE
    "DOJ" = DATE '1981-09-30';
```
- ***List the name of the employees who are not managers.***
```
SELECT
    "Ename"
FROM
    emp40
WHERE
    "Designation" != 'Mangaer';
```

- ***List the name of the emp40 whose employee numbers are 7369,7521,7839,7934,7788***
```
SELECT
    "Ename"
FROM
    emp40
WHERE
    "Emp_No" IN ( 7369, 7521, 7839, 7934, 7788 );
```
- ***Total No of Unique  Designation***
```
SELECT DISTINCT
    ( "Designation" )
FROM
    emp40;
```
- ***List the names of the employees who are not eligible for commission.***
```
SELECT
    "Ename"
FROM
    emp40
WHERE
    "Commision" = 'False';
```
- ***List the employee not assigned to any department.***
```
SELECT
    "Ename"
FROM
    emp40
WHERE
    "Dept" = 'None';
```
- ***List the employee who are eligible for commision.***
```
SELECT
    "Ename"
FROM
    emp40
WHERE
    "Commision" = 'TRUE';
```
- ***List the no of employee working with the company.***
```
SELECT
    COUNT("Ename")
FROM
    emp40;
```