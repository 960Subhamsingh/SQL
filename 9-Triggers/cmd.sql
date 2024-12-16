CREATE TABLE std (
    "Std_ID"   NUMBER(6),
    "Std_name" VARCHAR2(20),
    "Subject"  VARCHAR2(10),
    "Sub_Code" NUMBER(2),
    "Marks"    NUMBER(2),
    "Grade"    VARCHAR2(20)
);

        
INSERT INTO STD ("Std_ID", "Std_name" , "Subject" , "Sub_Code", "Marks" , "Grade")   
    WITH input AS (   
    SELECT 0001, 'Shushrut' , 'Maths', 10 ,  90 , 'A'  FROM dual UNION ALL  
    SELECT 0002, 'Viren'   , 'History', 30 ,  87 , 'B'    FROM dual UNION ALL  
    SELECT 0003, 'Vidhi', 'Physics'   , 20 ,   91 , 'A'  FROM dual UNION ALL  
    SELECT 0004, 'Sachin' , 'EVS' , 40 ,   83 , 'B'  FROM dual UNION ALL  
    SELECT 0005, 'Param', 'History'   , 50 ,   57 , 'D'  FROM dual   
    ) SELECT * FROM input ;

-- EXP9 --
CREATE TABLE stdn (
    rollno NUMBER(3),
    name   VARCHAR(2),
    m1     NUMBER(3),
    m2     NUMBER(3),
    m3     NUMBER(3),
    tot    NUMBER(3),
    avrg   NUMBER(3),
    result VARCHAR(10)
);

CREATE OR REPLACE TRIGGER t1 BEFORE
    INSERT ON stdn
    FOR EACH ROW
BEGIN
    :new.tot := :new.m1 + :new.m2 + :new.m3;

    :new.avrg := :new.tot / 3;
    IF (
        :new.m1 >= 50
        AND :new.m2 >= 50
        AND :new.m3 >= 50
    ) THEN
        :new.result := 'pass';
    ELSE
        :new.result := 'Fail';
    END IF;

END;
/
insert into stdn(rollno, name,m1,m2,m3) values(1,'subham kumar',50,60,70);
select * from stdn;

-- student table 
CREATE TABLE student (
    id      NUMBER(2),
    name    VARCHAR(20),
    age     NUMBER(3),
    history NUMBER(3),
    physics NUMBER(3),
    maths   NUMBER(3),
    result  VARCHAR2(4)
);

--TRIGGER FOR DISPLAYING GRADE OF THE STUDENT(Before inserting a record).

CREATE OR REPLACE TRIGGER grade_display BEFORE
    INSERT ON student
    FOR EACH ROW
BEGIN
    IF (
        :new.history >= 50
        AND :new.physics >= 50
        AND :new.maths >= 50
    ) THEN
        :new.result := 'PASS';
    ELSE
        :new.result := 'FAIL';
    END IF;
END;
/
-- Insert data of student

INSERT INTO student (
    id,
    name,
    age,
    history,
    physics,
    maths
) VALUES (
    01,
    'Shushrut Kumar',
    27,
    99,
    95,
    100
);

INSERT INTO student (
    id,
    name,
    age,
    history,
    physics,
    maths
) VALUES (
    02,
    'Viren Parmar',
    21,
    92,
    90,
    95
);

INSERT INTO student(
    id,
    name,
    age,
    history,
    physics,
    maths
) VALUES (
    03,
    'Vidhi Rai',
    49,
    20,
    55,
    33
);

select * from student;

--2. PROGRAM TO INDICATE INVALID CONDITION USING TRIGGER(if age>100,before insert )


CREATE OR REPLACE TRIGGER invalid_age BEFORE
    INSERT ON student
    FOR EACH ROW
BEGIN
    IF ( :new.age > 100 ) THEN
        raise_application_error(-20000, 'INSERTING INVALID AGE!');
    END IF;
END;
/

INSERT INTO student (
    id,
    name,
    age,
    history,
    physics,
    maths
) VALUES (
    04,
    'Sachin Tilokani',
    120,
    100,
    49,
    88
);