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

CREATE TABLE su54 (
    "Emp No"  NUMBER(6),
    "Ename"   VARCHAR2(20),
    "Job"     VARCHAR2(10),
    "Dept No" NUMBER(3),
    "Sal"     NUMBER(7)
);

desc su54;

ALTER TABLE su54 ADD (
    experience NUMBER(2)
);

desc su54;

ALTER TABLE su54 DROP COLUMN experience;

desc su54;

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

UPDATE su54
SET
    "Dept No" = 1
WHERE
    "Sal" > 50000;

SELECT
    *
FROM
    su54;

SELECT
    *
FROM
    su54
WHERE
    "Emp No" = 101;

desc su54;

SELECT
    "Ename"
FROM
    su54
WHERE
    "Emp No" = 101;

CREATE TABLE dept (
    "Dept No" NUMBER(3),
    dname     VARCHAR2(10),
    loc       VARCHAR2(10),
    empno     NUMBER(6)
);

desc Dept;

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

SELECT
    *
FROM
    dept;

SELECT
    *
FROM
    dept
WHERE
    "Dept No" = 101;

UPDATE dept
SET
    "Dept No" = 1
WHERE
    "DNAME" = 'CSE';

SELECT
    *
FROM
    dept;

TRUNCATE TABLE ra1711029010054;

DROP TABLE dept;

CREATE TABLE ra1811028010049 (
    "Emp No"  NUMBER(6),
    "Ename"   VARCHAR2(20),
    "Job"     VARCHAR2(10),
    "Dept No" NUMBER(3),
    "Sal"     NUMBER(7)
);

INSERT INTO ra1811028010049 VALUES (
    001,
    'Shushrut',
    'Student',
    001,
    100000
);

INSERT INTO ra1811028010049 VALUES (
    002,
    'Viren',
    'Engineer',
    010,
    7000
);

INSERT INTO ra1811028010049 VALUES (
    003,
    'Sachin',
    'Economist',
    100,
    60000
);

INSERT INTO ra1811028010049 VALUES (
    004,
    'Vidhi',
    'Journalist',
    101,
    90000
);

INSERT INTO ra1811028010049 VALUES (
    005,
    'Parma',
    'Developer',
    110,
    54000
);

SELECT
    *
FROM
    ra1811028010049;