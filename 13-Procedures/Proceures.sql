-- Create a procedure to calculate the grades of the student

set serveroutput on;

CREATE OR REPLACE PROCEDURE grade(
    n     IN NUMBER,
    grade OUT VARCHAR
) AS
BEGIN
    IF n > 90 THEN
        grade := 'A';
    ELSIF n > 80 THEN
        grade := 'B';
    ELSIF n > 70 THEN
        grade := 'C';
    ELSIF n > 60 THEN
        grade := 'D';
    ELSIF n > 50 THEN
        grade := 'E';
    ELSE
        grade := 'F';
    END IF;
END;



DECLARE
    n     NUMBER;
    grade VARCHAR(1);
BEGIN
    n := 91;
    grade1(n, grade);
    dbms_output.put_line('Grade :' || grade);
END;


DECLARE
    n     NUMBER;
    grade VARCHAR(1);
BEGIN
    n := 65;
    grade1(n, grade);
    dbms_output.put_line('Grade :' || grade);
END;
