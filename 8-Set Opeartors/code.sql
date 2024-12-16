CREATE TABLE emp049 (
    ename  VARCHAR2(20),
    deptid NUMBER(2)
);

CREATE TABLE department049 (
    deptid   NUMBER(2),
    deptname VARCHAR(15)
);

desc EMP049;
desc Department049;
EMP
INSERT INTO EMP049 VALUES ('Baby Yoda', 01);
INSERT INTO EMP049 VALUES ('Din Djarin', 21);
INSERT INTO EMP049 VALUES ('Boba Fett', 02);
INSERT INTO EMP049 VALUES ('Master Luke', 10);
INSERT INTO EMP049 VALUES ('Kylo Ren', 03);
Dept
INSERT INTO Department049 VALUES (01, 'Operations');
INSERT INTO Department049 VALUES (02, 'Management');
INSERT INTO Department049 VALUES (03, 'Sales');
INSERT INTO Department049 VALUES (69, 'Finance');
INSERT INTO Department049 VALUES (18, 'HR');

-- 1. Display all the dept numbers available with the dept and emp tables avoiding duplicates.

(SELECT DeptId FROM EMP049) UNION (SELECT DeptId FROM Department049);

2. Display all the dept numbers available with the dept and emp tables.
(
    SELECT
        deptid
    FROM
        emp049
)
UNION ALL
(
    SELECT
        deptid
    FROM
        department049
);

--3. Display all the dept numbers available in emp and not in dept tables and vice versa.

(
    SELECT
        deptid
    FROM
        emp049
)
MINUS
(
    SELECT
        deptid
    FROM
        department049
);

(
    SELECT
        deptid
    FROM
        department049
)
MINUS
(
    SELECT
        deptid
    FROM
        emp049
);