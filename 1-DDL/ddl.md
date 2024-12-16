### – Database Management System

***1. Create a table called EMP40***
```
CREATE TABLE emp40 (
    "Emp_No"      NUMBER(6),
    "Ename"       VARCHAR2(20),
    "DOJ"         DATE,
    "Dept"        VARCHAR2(10),
    "Dept_No"     NUMBER(2),
    "Designation" VARCHAR2(20),
    "Commision"   VARCHAR2(20),
    "Sal"         NUMBER(7)
);
```
- ***Add a column experience to the emp40 table***
```
ALTER TABLE EMP40 ADD ("Experience" number (2));
```
```
desc EMP40;
```
- ***Truncate the emp40 table and drop the dept tabl***
- ***Drop a column experience to the emp40 table***
```
ALTER TABLE EMP40 DROP COLUMN "Experience";
```
```
desc EMP40;
```

- 1. Create a table called EMP with the following structure.
```
Name Type
---------------------------------
Emp no number(6)
Ename varchar2(20)
JOB varchar2(10)
Dept No Number(3)
Sal number (7)
```
```Query
CREATE TABLE su54 (
    "Emp No"  NUMBER(6),
    "Ename"   VARCHAR2(20),
    "Job"     VARCHAR2(10),
    "Dept No" NUMBER(3),
    "Sal"     NUMBER(7)
);
```

- 2. Add a column experience to the su54 table . Experience numeric null allowed.
```
ALTER TABLE su54 ADD (
    experience NUMBER(2)
);
```
```
Name       Null? Type         
---------- ----- ------------ 
Emp No           NUMBER(6)    
Ename            VARCHAR2(20) 
Job              VARCHAR2(10) 
Dept No          NUMBER(3)    
Sal              NUMBER(7)    
EXPERIENCE       NUMBER(2)   
```
- 3. drop a column experience to the su54 table.
```
Alter table su54 drop column experience;
```
```
Name    Null? Type         
------- ----- ------------ 
Emp No        NUMBER(6)    
Ename         VARCHAR2(20) 
Job           VARCHAR2(10) 
Dept No       NUMBER(3)    
Sal           NUMBER(7)   
```

- 7. Create dept table with the following structure.
```
Name Type
-------------------------------
Dept no number(3)
Dname varchar2(10)
LOC varchar2(10)
EMPNO number(6)
```
```
CREATE TABLE dept (
    "Dept No" NUMBER(3),
    dname     VARCHAR2(10),
    loc       VARCHAR2(10),
    empno     NUMBER(6)
);
``` 

- ***Truncate the emp table and drop the dept table.***

```
Truncate table dept;

drop table dept;
```