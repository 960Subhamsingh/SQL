--concat first_name and last_name

SELECT
    first_name
    || ' '
    || last_name
FROM
    employees
WHERE (
    employee_id IN ( 108, 200, 203, 204, 121,
                     145 )AND SALARY <= 10000);


-- 1.1. job id start with AD salary should be >10000
-- 1.2 OR jon is as IT and salary <= 6000
-- 2.1 Department name should be 'Purchasing', 'IT', 'Executive'
-- 2.2 COMMISSION_PCT SHOULD BE 0
-- 3.1 hire date should be after 1-JAN-2000

SELECT
    *
FROM
    employees
WHERE
    ( ( first_name LIKE 'AD%'
        AND emp_no > 10000 )
      OR ( first_name LIKE 'IT%'
           AND emp_no<= 10000 ) )
    OR ( emp_no IN ( 10001, 10002, 10003 )
         AND emp_no = 10001 )
    AND birth_date > TO_DATE('1-JAN-2000', 'dd-MON-yyyy');