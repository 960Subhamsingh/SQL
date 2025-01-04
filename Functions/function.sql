
set serveroutput on
-- sum of two number 
CREATE OR REPLACE FUNCTION getsum (
    num1 NUMBER,
    num2 NUMBER
) RETURN NUMBER IS
BEGIN
    RETURN num1 + num2;
END;

select getsum(2,4) from dual;

BEGIN
    dbms_output.put_line('Sum of two number is ' || getsum(12, 45));
END;

-- factorial number

CREATE OR REPLACE FUNCTION fact (
    n NUMBER
) RETURN NUMBER IS
    i NUMBER(10);
    f NUMBER := 1;
BEGIN
    FOR i IN 1..n LOOP
        f := f * i;
    END LOOP;
    RETURN f;
END;

select fact(3) from dual;

select fact(5) from dual;
