set serveroutput on;

?* Create a procedure with exception handling when
finding the grades of the student.*/

CREATE OR REPLACE PROCEDURE fgrade (
    n     IN NUMBER,
    grade OUT VARCHAR
) AS
BEGIN
    DECLARE
        no_score EXCEPTION;
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
        ELSIF
            n <= 50
            AND n >= 0
        THEN
            grade := 'F';
        ELSE
            RAISE no_score;
        END IF;

    EXCEPTION
        WHEN no_score THEN
            dbms_output.put_line('Invalid score!');
    END;
END;
/

DECLARE
    n     NUMBER;
    grade VARCHAR(1);
BEGIN
    n := -1;
    fgrade(n, grade);
    IF grade IS NOT NULL THEN
        dbms_output.put_line('Grade: ' || grade);
    END IF;

END;