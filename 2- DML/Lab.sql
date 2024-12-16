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

desc EMP40
select * from emp40;

INSERT INTO emp40 (
    "Emp_No",
    "Ename",
    "DOJ",
    "Dept",
    "Dept_No",
    "Designation",
    "Commision",
    "Sal"
)
    WITH input AS (
        SELECT
            7369,
            'Shushrut',
            DATE '1981-09-30',
            'Sales',
            10,
            'Salesman',
            'TRUE',
            950
        FROM
            dual
        UNION ALL
        SELECT
            7839,
            'Viren',
            DATE '1985-09-20',
            'Sales',
            30,
            'Salesman',
            'TRUE',
            900
        FROM
            dual
        UNION ALL
        SELECT
            7521,
            'Vidhi',
            DATE '1983-10-30',
            'IT',
            20,
            'Analyst',
            'FALSE',
            1000
        FROM
            dual
        UNION ALL
        SELECT
            7934,
            'Sachin',
            DATE '1989-05-15',
            'None',
            40,
            'Mangaer',
            'FALSE',
            1100
        FROM
            dual
        UNION ALL
        SELECT
            7788,
            'Param',
            DATE '1990-01-30',
            'IT',
            50,
            'Analyst',
            'TRUE',
            1150
        FROM
            dual
    )
    SELECT
        *
    FROM
        input;


ALTER TABLE emp40 DROP COLUMN "Experience";
