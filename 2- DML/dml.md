***DML***
- ***insert atleast five values for each coulmn of su54 table.***
```
INSERT INTO su54 VALUES (
    101,
    'Alex Mercer',
    'Founder',
    001,
    100000
);

INSERT INTO su54 VALUES (
    102,
    'Tony Stark',
    'Co Founder',
    010,
    90000
);

INSERT INTO su54 VALUES (
    103,
    'Steve Rogers',
    'Editor',
    100,
    80000
);

INSERT INTO su54 VALUES (
    104,
    'Clint Barton',
    'SWE',
    101,
    40000
);

INSERT INTO su54 VALUES (
    105,
    'Natasha Romanoff',
    'HR',
    110,
    35000
);
```
- ***insert atleast five values for each coulmn of dept table.***

```
INSERT INTO dept VALUES (
    101,
    'CSE',
    'North',
    222220
);

INSERT INTO dept VALUES (
    102,
    'ECE',
    'South',
    222221
);

INSERT INTO dept VALUES (
    103,
    'Mech',
    'East',
    222223
);

INSERT INTO dept VALUES (
    104,
    'Civil',
    'West',
    222224
);

INSERT INTO dept VALUES (
    105,
    'Bio Tech',
    'N. East',
    222225
);
```
- ***Update the su54 no to 1 whose salary are greater than 50000.***
```
UPDATE su54
SET
    "Dept No" = 1
WHERE
    "Sal" > 50000;
```
- 10. Update the deptno=1 whose dept is CSE.
```
update dept set "Dept No" = 1 where "DNAME"="CSE";
```
UPDATE EMP40 SET "Dept_No" = 1 WHERE "Sal" = 950;


1. List the details of emp40 who joined on. 30 sep 81.( Select * from table tablename where date = ‘')

2. List the name of the employees who are not managers.

