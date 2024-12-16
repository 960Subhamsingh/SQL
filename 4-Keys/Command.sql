-- Keys
-- Create the following table Customer_Account 

CREATE TABLE customer_account (
    cust_id         NUMBER(5)
        CONSTRAINT cad_pk PRIMARY KEY,
    cust_last_name  VARCHAR2(20)
        CONSTRAINT cad_clastname NOT NULL,
    cust_mid_name   CHAR(3),
    cust_first_name VARCHAR2(20),
    account_no      NUMBER(4)
        CONSTRAINT cad_acno UNIQUE,
    account_type    VARCHAR2(15),
    bank_branch     VARCHAR2(20),
    cust_email      VARCHAR2(30)
        CONSTRAINT cad_cemail UNIQUE
);

desc Customer_Account;

INSERT INTO customer_account VALUES (
    1,
    'Jenson',
    NULL,
    'Laura',
    2739,
    'Savings',
    'Indus Bank',
    'laura.jensen@example.com'
);

INSERT INTO customer_account VALUES (
    2,
    'Viren',
    NULL,
    'Parmar',
    3057,
    'Current',
    'HDFC Bank',
    'viren@gmail.com'
);

INSERT INTO customer_account VALUES (
    3,
    'Sachin',
    'Kam',
    'Tilokani',
    7747,
    'Salary',
    'SBI Bank',
    'sachin@gmail.com'
);

INSERT INTO customer_account VALUES (
    4,
    'Monu',
    'Dep',
    'Patel',
    4089,
    'Current',
    'Bank of Baroda',
    'jakin@gmail.com'
);

INSERT INTO customer_account VALUES (
    5,
    'Param',
    NULL,
    'Shah',
    3529,
    'NRI',
    'Capitol Bank',
    'param@gmail.com'
);

INSERT INTO customer_account VALUES (
    12,
    'Neel',
    NULL,
    'Thaker',
    4989,
    'Savings',
    'LIC Bank',
    'neel@gmail.com'
);

SELECT
    *
FROM
    customer_account;

-- create customer_loan table 

CREATE TABLE customer_loan (
    loanno            NUMBER(4)
        CONSTRAINT cl_lno PRIMARY KEY,
    cust_id           NUMBER(5)
        CONSTRAINT cl_cid
            REFERENCES customer_account ( cust_id )
                ON DELETE CASCADE,
    ammount_in_dollar NUMBER(6, 2)
);

desc Customer_Loan;

INSERT INTO customer_loan VALUES (
    5577,
    2,
    9873.36
);

INSERT INTO customer_loan VALUES (
    8266,
    4,
    5660.47
);

INSERT INTO customer_loan VALUES (
    2430,
    1,
    6881.00
);

INSERT INTO customer_loan VALUES (
    9323,
    3,
    2811.73
);

INSERT INTO customer_loan VALUES (
    4743,
    5,
    5014.56
);

SELECT
    *
FROM
    customer_loan;
    
-- create employee_details table 

CREATE TABLE employee_details (
    employee_id         NUMBER(6)
        CONSTRAINT ed_pkey PRIMARY KEY,
    employee_last_name  VARCHAR2(20),
    employee_mid_name   VARCHAR2(3),
    employee_first_name VARCHAR2(20),
    employee_email      VARCHAR2(30),
    employee_dept       VARCHAR2(15) DEFAULT 'HR',
    manager_id          NUMBER(6)
        CONSTRAINT ed_mid
            REFERENCES employee_details ( employee_id )
);

desc Employee_Details;

INSERT INTO employee_details (
    employee_id,
    employee_last_name,
    employee_mid_name,
    employee_first_name,
    employee_email
) VALUES (
    6,
    'James',
    NULL,
    'Milner',
    'james@gmail.com'
);

INSERT INTO employee_details (
    employee_id,
    employee_last_name,
    employee_mid_name,
    employee_first_name,
    employee_email,
    manager_id
) VALUES (
    7,
    'Sergio',
    'Ruk',
    'Ramos',
    'sergio@gmail.com',
    6
);

INSERT INTO employee_details_049 VALUES (
    8,
    'Toni',
    NULL,
    'Kroos',
    'toni@gmail.com',
    'Production',
    7
);

INSERT INTO employee_details_049 VALUES (
    9,
    'Luka',
    NULL,
    'Modric',
    'luka@gmail.com',
    'R&D',
    NULL
);

INSERT INTO employee_details_049 VALUES (
    10,
    'Karim',
    NULL,
    'Benzema',
    'karim@gmail.com',
    'Production',
    9
);

SELECT
    *
FROM
    employee_details;

-- create  customer_fixed_deposit table
CREATE TABLE customer_fixed_deposit (
    fixeddeposit_no   NUMBER(4)
        CONSTRAINT cfd_pkey PRIMARY KEY,
    cust_id           NUMBER(5)
        CONSTRAINT cfd_cid
            REFERENCES customer_account_details ( cust_id ),
    account_no        NUMBER(4),
    amount_in_dollars NUMBER(7, 2),
    rate_of_interest  NUMBER(3, 1)
        CONSTRAINT cfd_roi CHECK ( rate_of_interest BETWEEN 2.5 AND 12.0 )
);

desc customer_account_details;

INSERT INTO customer_fixed_deposit VALUES (
    9320,
    1,
    4457,
    85907.00,
    3.4
);

INSERT INTO customer_fixed_deposit VALUES (
    7837,
    2,
    8615,
    40254.28,
    4.5
);

INSERT INTO customer_fixed_deposit VALUES (
    8072,
    3,
    3376,
    66406.30,
    8.7
);

INSERT INTO customer_fixed_deposit VALUES (
    6422,
    4,
    8997,
    15000.30,
    5.9
);

INSERT INTO customer_fixed_deposit VALUES (
    7720,
    5,
    8868,
    12374.31,
    11.5
);

SELECT
    *
FROM
    customer_fixed_deposit;


alter table Customer_Fixed_Deposit drop constraint  CFD_Pkey;


alter table Customer_Fixed_Deposit add constraint CFD_Pkey primary key(Account_No);


select Cust_Last_Name from Customer_Account_Details;


select DISTINCT(Cust_Last_Name) from Customer_Account_Details;


select * from Customer_Fixed_Deposit where Amount_In_Dollars > 10000;

select Cust_ID,Account_No from Customer_Account_Details where Cust_First_Name = 'Graham';

select Cust_ID,Cust_Last_Name from Customer_Account_Details where Account_Type = 'Savings' AND Bank_Branch = 'Capital Bank';

select Cust_ID,Cust_Last_Name from Customer_Account_Details where Account_Type != 'Savings' AND Bank_Branch != 'Capital Bank';

select Cust_ID,Cust_Last_Name from Customer_Account_Details where Account_Type = 'Savings' OR Bank_Branch = 'Capital Bank';

select Cust_ID from Customer_Fixed_Deposit where Amount_In_Dollars between 10000.00 and 20000.00;

select * from Customer_Account_Details where Bank_Branch in ('Capital Bank','Indus Bank');

-- list of Branch will start with 'Ca'
select Account_No,Bank_Branch from Customer_Account_Details where Bank_Branch like 'Ca%';

select Account_No,Bank_Branch from Customer_Account_Details where Bank_Branch like '_a%';

select * from Employee_Details where Manager_ID is null;

select * from Employee_Details where Manager_ID is not null;

SELECT
    cust_id,
    amount_in_dollars
FROM
    customer_fixed_deposit
ORDER BY
    amount_in_dollars;