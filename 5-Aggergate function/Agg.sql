-- Table creation:

CREATE TABLE orders (
    salesman_id  NUMBER(4) NOT NULL,
    city         VARCHAR(15),
    customer_id  NUMBER(4) NOT NULL,
    order_date   DATE NOT NULL,
    order_amount NUMBER(8) NOT NULL,
    grade        CHAR
);

-- Database entry:

INSERT INTO orders VALUES (
    5002,
    NULL,
    3000,
    TO_DATE('2012-08-15', 'yyyy-mm-dd'),
    1500,
    NULL
);

INSERT INTO orders VALUES (
    5003,
    'Vadodara',
    3001,
    TO_DATE('2012-08-16', 'yyyy-mm-dd'),
    1900,
    'B'
);

INSERT INTO orders VALUES (
    5002,
    'Mumbai',
    3002,
    TO_DATE('2012-08-16', 'yyyy-mm-dd'),
    2100,
    'A'
);

INSERT INTO orders VALUES (
    5005,
    'Mumbai',
    3003,
    TO_DATE('2012-08-16', 'yyyy-mm-dd'),
    3600,
    'D'
);

INSERT INTO orders VALUES (
    5003,
    'Chennai',
    3004,
    TO_DATE('2012-08-17', 'yyyy-mm-dd'),
    5400,
    'A'
);

INSERT INTO orders VALUES (
    5002,
    'Vadodara',
    3005,
    TO_DATE('2012-08-17', 'yyyy-mm-dd'),
    6400,
    'C'
);

INSERT INTO orders VALUES (
    5003,
    'Vadodara',
    3003,
    TO_DATE('2012-08-17', 'yyyy-mm-dd'),
    5400,
    'D'
);

INSERT INTO orders VALUES (
    5003,
    NULL,
    3008,
    TO_DATE('2012-08-17', 'yyyy-mm-dd'),
    8900,
    'C'
);

INSERT INTO orders VALUES (
    5002,
    'Mumbai',
    3003,
    TO_DATE('2012-08-17', 'yyyy-mm-dd'),
    3300,
    NULL
);

INSERT INTO orders VALUES (
    5010,
    'Chennai',
    3003,
    TO_DATE('2012-08-19', 'yyyy-mm-dd'),
    1100,
    NULL
);

INSERT INTO orders VALUES (
    5005,
    NULL,
    3003,
    TO_DATE('2012-08-20', 'yyyy-mm-dd'),
    10000,
    'A'
);




