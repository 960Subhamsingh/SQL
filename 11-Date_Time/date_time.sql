-- create a table with a TIMESTAMP column to store precise time:

CREATE TABLE event (
    event_id INT PRIMARY KEY,
    event_name VARCHAR2(100),
    event_time TIMESTAMP
);

/* Inserting Data with TIMESTAMP:
  can we/you insert a TIMESTAMP value explicitly using TO_TIMESTAMP() to specify the exact date and time, including fractional seconds: */

-- Inserting a record with a specific timestamp
INSERT INTO event (event_id, event_name, event_time)
VALUES (1, 'Product Launch', TO_TIMESTAMP('2024-12-17 10:30:45.123', 'YYYY-MM-DD HH24:MI:SS.FF'));

INSERT INTO event (event_id, event_name, event_time)
VALUES (2, 'Holiday Sale', TO_TIMESTAMP('2024-12-18 15:45:30.456', 'YYYY-MM-DD HH24:MI:SS.FF'));

/* 3. Retrieving TIMESTAMP Values:
When you select data from the table, Oracle will return the TIMESTAMP values with precision: 
*/
SELECT event_id, event_name, event_time FROM event;

/*
Using CURRENT_TIMESTAMP:
If you want to insert the current timestamp (the date and time at the moment of insertion), you can use the CURRENT_TIMESTAMP function:
*/

-- Insert with the current timestamp
INSERT INTO event (event_id, event_name, event_time) VALUES (3, 'Flash Sale', CURRENT_TIMESTAMP);

/* 
5. Format of TIMESTAMP:
The TIMESTAMP format in Oracle is:
YYYY-MM-DD HH24:MI:SS.FF
YYYY: Four-digit year.
MM: Two-digit month.
DD: Two-digit day.
HH24: Hour in 24-hour format.
MI: Minute.
SS: Second.
FF: Fractional seconds (up to 9 digits).
*/

/* 6. Example of TIMESTAMP Precision:
If you use TO_TIMESTAMP() with fractional seconds, you can specify different levels of precision. For example: */

-- Inserting timestamp with nanosecond precision
INSERT INTO event (event_id, event_name, event_time)
VALUES (4, 'Mega Event', TO_TIMESTAMP('2024-12-19 20:10:15.123456789', 'YYYY-MM-DD HH24:MI:SS.FF9'));

/*
This allows storing very precise time data, which can be useful for logging events, tracking transactions,
or any case where you need to store exact moments down to fractions of a second.

Summary:
TIMESTAMP in Oracle is used to store both the date and time (with fractional seconds).
You can insert and retrieve it using the TO_TIMESTAMP() function or CURRENT_TIMESTAMP.
Precision can go up to nanoseconds (FF9), depending on the requirement.
*/
desc event;
 
SELECT TO_TIMESTAMP('2024-12-17 14:30:45.123456', 'YYYY-MM-DD HH24:MI:SS.FF6') AS event_time
FROM dual;

SELECT TO_TIMESTAMP(event_time, 'YYYY-MM-DD HH24:MI:SS.FF6') AS current_time
FROM event;

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
    dbms_output.put_line(TO_TIMESTAMP('2024-12-17 14:30', 'YYYY-MM-DD HH24:MI'));
    dbms_output.put_line(TO_TIMESTAMP('2024-12-17 14:30:45.123456', 'YYYY-MM-DD HH24:MI:SS.FF6'));
/*
FF6 indicates that the fractional part (microseconds) will have six digits.
This format mask now matches the structure of the input string and will successfully convert it.
*/
   -- dbms_output.put_line(TO_TIMESTAMP('2024-12-17 14:30:45.123456 +00:00', 'YYYY-MM-DD HH24:MI:SS.FF6 TZD'));
   
    /*Mismatch in Length or Format: If the string has more parts 
    (e.g., fractional seconds, timezone, etc.) than your format, you need to
    adjust the format mask to match.
    */
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