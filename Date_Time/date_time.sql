/*returns the current date in the session time zone, in a value in the 
Gregorian calendar of data type DATE. */
 SELECT SESSIONTIMEZONE, CURRENT_DATE FROM DUAL;

-- returns the current date
select round(sysdate)from dual;

/* ADD_MONTHS function is used to add a specified number of months to a given date.
It returns a date that is the result of adding (or subtracting) a specified
number of months to the input date. */

select add_months(sysdate,3)from dual; 
-- Handling end-of-month scenarios:
SELECT ADD_MONTHS(DATE '2024-01-01', 3) AS new_date FROM dual;
--Adding months to a date:
SELECT ADD_MONTHS(SYSDATE, 6) AS new_date FROM dual;
-- Subtracting months from a date
SELECT ADD_MONTHS(DATE '2024-01-01', -3) AS new_date FROM dual;
-- Adding months to SYSDATE:
SELECT ADD_MONTHS(SYSDATE, 6) AS new_date FROM dual;
-- Last Date of month 
select last_day(sysdate)from dual;
-- Date of next 'Tuesday'
select next_day(sysdate,'tuesday')from dual;

---------------------------- timestamp--------------------------
set SERVEROUTPUT ON

BEGIN
    dbms_output.put_line(TO_TIMESTAMP('2009-09-21 ', 'YYYY-MM-DD'));
END;

---------------------------- timestamp--------------------------
DECLARE
    checkout TIMESTAMP(3);
BEGIN
    checkout := '10-JUL- 2012 07:23:23.272';
    dbms_output.put_line(to_char(checkout));
    dbms_output.put_line(TO_DATE('31-mar-2024', 'DD-MON-YYYY'));
END;

----------------------------INTERVAL---------------------------
begin
    dbms_output.put_line(INTERVAL '10-2' YEAR TO MONTH);
    end;
    /
+000000010-02

PL/SQL procedure successfully completed.
------------------------------INTERVAL------------------------
SQL> begin
    dbms_output.put_line(INTERVAL '9' MONTH);
    end;
    /
+000000000-09

PL/SQL procedure successfully completed.