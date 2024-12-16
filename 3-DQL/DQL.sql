CREATE TABLE emp49 (
    empno      NUMBER(4),
    "Emp Name" VARCHAR2(25),
    dept       NUMBER(3),
    sal        NUMBER(4),
    manager    NUMBER(4),
    job        VARCHAR2(15)
);

desc EMP49;

----------------------------------------
INSERT INTO emp49 VALUES (
    7369,
    'Shushrut Kumar',
    10,
    8000,
    7521,
    'Founder'
);

INSERT INTO emp49 VALUES (
    7521,
    'Viren Parmar',
    20,
    7000,
    7934,
    'CoFounder'
);

INSERT INTO emp49 VALUES (
    7934,
    'Vidhi Rai',
    40,
    6000,
    7902,
    'Chief Advisor'
);

INSERT INTO emp49 VALUES (
    7902,
    'Sachin Tilokani',
    60,
    2000,
    7040,
    'Secretary'
);

INSERT INTO emp49 VALUES (
    7040,
    'Param Shah',
    70,
    1600,
    7566,
    'CMO'
);

INSERT INTO emp49 VALUES (
    7566,
    'Annahita Patel',
    80,
    950,
    7839,
    'Trainee'
);

INSERT INTO emp49 VALUES (
    7839,
    'Sakshee Bhavsar',
    80,
    950,
    7789,
    'Chief Of Staff'
);

INSERT INTO emp49 VALUES (
    7789,
    'Anna Johnson',
    90,
    2800,
    7369,
    'Janitor'
);
-------------------------------

SELECT
    *
FROM
    emp49;

SELECT
    *
FROM
    emp49
ORDER BY
    sal;

SELECT
    *
FROM
    emp49
ORDER BY
    sal DESC;

SELECT
    *
FROM
    emp49
WHERE
    sal BETWEEN 1500 AND 2500;

SELECT
    *
FROM
    emp49
WHERE
    manager IN ( 7902, 7566, 7789 );

SELECT
    *
FROM
    emp49
WHERE
    "Emp Name" LIKE 'J%'
    OR "Emp Name" LIKE 'T%';

SELECT
    *
FROM
    emp49
WHERE
    job LIKE '%M%'
    OR job LIKE '%P%';

SELECT DISTINCT
    ( job )
FROM
    emp49;

SELECT
    *
FROM
    emp49
WHERE
    dept IN ( 10, 20 );

SELECT
    COUNT(DISTINCT(job))
FROM
    emp49;

SELECT DISTINCT
    ( dept )
FROM
    emp49;

SELECT
    "Emp Name"
FROM
    emp49
WHERE
    "Emp Name" LIKE '%AN%';

