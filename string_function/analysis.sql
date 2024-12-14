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
    ( ( employee_id LIKE 'AD%'
        AND salary > 10000 )
      OR ( employee_id LIKE 'IT%'
           AND salary <= 10000 ) )
    OR ( department_id IN ( 90, 60, 30 )
         AND commission_pct = 0 )
    AND hire_date > TO_DATE('1-JAN-2000', 'dd-MON-yyyy');