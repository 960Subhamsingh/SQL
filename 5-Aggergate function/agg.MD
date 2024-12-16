### Aggergate Function

1. Write a SQL statement to find the total purchase amount of all orders
```
SELECT
    SUM(order_amount) AS total_purchase
FROM
    orders;
```
2. Write a SQL statement to find the average purchase amount of all orders.
```
SELECT
    CAST(AVG(order_amount) AS DECIMAL(10,
         2)) AS total_purchase
FROM
    orders;

AVG_PURCHAGE
------------
        4810
```
3. Write a SQL statement to find the number of customers who get at least a gradation for his/her performance.

```
SELECT
    COUNT(DISTINCT customer_id) AS graded_customer
FROM
    orders
WHERE
    grade IS NOT NULL;

GRADE_CUSTOMER
--------------
             6
```

4. Write a SQL statement to get the maximum purchase amount of all the orders

```
SELECT
    MAX(order_amount) AS max_purchage
FROM
    orders;

MAX_PURCHAGE
------------
       10000
```

5. Write a SQL statement to get the minimum purchase amount of all the orders.

```
SELECT
    MIN(order_amount) AS MIN_purchage
FROM
    orders;

MIN_PURCHAGE
------------
        1100
```

6. Write a SQL statement which selects the highest grade for each of the cities of the
customers.

```
SELECT
    city,
    MAX(grade) AS high_grade
FROM
    orders
WHERE
    city IS NOT NULL group by city;
```
```
CITY            H
--------------- -
Mumbai          D
Vadodara        D
Chennai         A
```
7. Write a SQL statement to find the highest purchase amount ordered by each customer with their ID and highest purchase amount.
```
SELECT
    customer_id,
    MAX(order_amount) as max_order
FROM
    orders
GROUP BY
    customer_id
ORDER BY
    customer_id;
```
```
CUSTOMER_ID  MAX_ORDER
----------- ----------
       3001       1900
       3002       2100
       3003      10000
       3004       5400
       3005       6400
       3008       8900

6 rows selected.
```

8. Write a SQL statement to find the highest purchase amount ordered by each customer on a particular date with their ID, order date and highest purchase amount.

```
SELECT
    customer_id,
    order_date,
    MAX(order_amount) as max_order
FROM
    orders
GROUP BY
    customer_id,order_date
ORDER BY
    order_date;
```
```
CUSTOMER_ID ORDER_DAT  MAX_ORDER
----------- --------- ----------
       3001 16-AUG-12       1900
       3002 16-AUG-12       2100
       3003 16-AUG-12       3600
       3003 17-AUG-12       5400
       3004 17-AUG-12       5400
       3005 17-AUG-12       6400
       3008 17-AUG-12       8900
       3003 19-AUG-12       1100
       3003 20-AUG-12      10000

9 rows selected.
```

10. Write a SQL statement to find the highest purchase amount with their ID and order date, for only those customers who have the highest purchase amount in a day is more than 2000.

```
SELECT
    customer_id,
    order_date,
    MAX(order_amount)
FROM
    orders_049
GROUP BY
    customer_id,
    order_date
HAVING
    MAX(order_amount) > 2000
ORDER BY
    order_date;
```
```
CUSTOMER_ID ORDER_DAT MAX(ORDER_AMOUNT)
----------- --------- -----------------
       3002 16-AUG-12              2100
       3003 16-AUG-12              3600
       3003 17-AUG-12              5400
       3004 17-AUG-12              5400
       3005 17-AUG-12              6400
       3008 17-AUG-12              8900
       3003 20-AUG-12             10000

7 rows selected.
```

11. Write a SQL statement to find the highest purchase amount with their ID and order date,for those customers who have a higher purchase amount in a day is within the range 2000 and 6000

```
SELECT
    customer_id,
    order_date,
    MAX(order_amount)
FROM
    orders
GROUP BY
    customer_id,
    order_date
HAVING MAX(order_amount) > 2000
       AND MAX(order_amount) < 6000
ORDER BY
    order_date;
```
```
CUSTOMER_ID ORDER_DAT MAX(ORDER_AMOUNT)
----------- --------- -----------------
       3002 16-AUG-12              2100
       3003 16-AUG-12              3600
       3003 17-AUG-12              5400
       3004 17-AUG-12              5400
```
12. Write a SQL statement to find the highest purchase amount with their ID, for only those customers whose ID is within the range 3002 and 3007.

```
SELECT
    customer_id,
    MAX(order_amount)
FROM
    orders
GROUP BY
    customer_id
HAVING customer_id >= 3002
       AND customer_id <= 3007;
```
```
CUSTOMER_ID MAX(ORDER_AMOUNT)
----------- -----------------
       3004              5400
       3002              2100
       3005              6400
       3003             10000
```
13. Write a SQL statement to find the highest purchase amount with their ID, for only those salesmen whose ID is within the range 5003 and 5008.

```
SELECT
    salesman_id,
    MAX(order_amount)
FROM
    orders
GROUP BY
    salesman_id
HAVING salesman_id >= 5003
       AND salesman_id <= 5008;
```
```
SALESMAN_ID MAX(ORDER_AMOUNT)
----------- -----------------
       5003              8900
       5005             10000
```

 
14. Write a SQL statement that counts all orders for a date August 17th, 2012

```
SQL>  SELECT
  2      COUNT(order_amount) AS order_count
  3  FROM
  4      orders
  5  WHERE
  6      order_date = TO_DATE('2012-08-17', 'yyyy-mm-dd');

ORDER_COUNT
-----------
          5
```

15. Write a SQL statement that counts the number of different non NULL city values for salesmen.

```
SELECT
    COUNT(DISTINCT city) AS city_count
FROM
    orders
WHERE
    city IS NOT NULL;
```
```
CITY_COUNT
----------
         3

```