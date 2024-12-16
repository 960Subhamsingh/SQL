-- cursor program for ELECTRICITY BILL CALCULATION

-- create table 
CREATE TABLE electricity (
    name         VARCHAR2(15),
    prev_reading NUMBER(5),
    curr_reading NUMBER(5)
);

-- Insert electricity 
INSERT INTO electricity VALUES (
    'Shushrut Kumar',
    2590,
    5891
);

INSERT INTO electricity VALUES (
    'Viren Parmar',
    7555,
    10210
);

INSERT INTO electricity VALUES (
    'Vidhi Rai',
    8190,
    11203
);

set serveroutput on;

DECLARE
    CURSOR bill IS
    SELECT
        *
    FROM
        electricity;

    row_electricity electricity%rowtype;
    amount          NUMBER(9, 2);
BEGIN
    OPEN bill;
    LOOP
        FETCH bill INTO row_electricity;
        EXIT WHEN bill%notfound;
        amount := ( row_electricity.curr_reading - row_electricity.prev_reading ) * 5;
        dbms_output.put_line('BILL FOR '
                             || row_electricity.name
                             || ' is Rs '
                             || amount);
    END LOOP;

    CLOSE bill;
END;
/

-- CURSOR PROGRAM FOR STUDENT GRADE CALCULATION

CREATE TABLE student (
    name    VARCHAR(20),
    maths   NUMBER(3),
    science NUMBER(3)
);

INSERT INTO student VALUES (
    'Shushrut Kumar',
    79,
    84
);

INSERT INTO student VALUES (
    'Viren Parmar',
    99,
    88
);

INSERT INTO student VALUES (
    'Sachin Tilokani',
    34,
    65
);

INSERT INTO student VALUES (
    'Neel Thakar',
    67,
    55
);

INSERT INTO student VALUES (
    'Param Shah',
    49,
    46
);

set serveroutput on;

DECLARE
    CURSOR grade IS
    SELECT
        *
    FROM
        student;

    student_row student%rowtype;
BEGIN
    OPEN grade;
    LOOP
        FETCH grade INTO student_row;
        EXIT WHEN grade%notfound;
        IF ( student_row.maths + student_row.science ) > 100 THEN
            dbms_output.put_line(student_row.name
                                 || ' has achieved grade PASS with total marks = '
                                 ||(student_row.maths + student_row.science));
        ELSE
            dbms_output.put_line(student_row.name
                                 || ' has achieved grade FAIL with total marks = '
                                 ||(student_row.maths + student_row.science));
        END IF;

    END LOOP;

    CLOSE grade;
END;
/