SELECT
    substr(last_name, 3, 5)
FROM
    employees;
    
-- Adds two or more expressions together

select concat(first_name , last_name) as Name from employees;

select (first_name || ' ' || last_name) as Name from employees;

--Converts a string to lower-case
select   lower(dname) from dept;

--	Converts a string to upper-case
select upper(dname) from dept;
-- INITCAP() function to convert the first letter of each word to uppercase and other letters to lowercase
 select initcap(dname) from dept;
 
 SELECT INITCAP('this is my sentence') from dual;
 SELECT UPPER(SUBSTR('your string here',1,1)) || SUBSTR('your string here',2) as First_letter_capital from dual;
 
 
 select ltrim(' RA1811028010049') from dual;
 
 select rtrim('RA1811028010049 ')from dual;

select rtrim(' India ')from dual;

select length('Subham kumar') len from dual;

select replace('Suubham Kumar', 'Kumar','Sharma') Name from dual;

select substr('The weather is pleasent', 7,6) substr from dual;

select rpad('Subham Kumar', 3, '*') rpad from dual;

select lpad('Subham',3,'*') from dual;
-- replace 'ld' to 'ol'
select translate('cold','ld','ol') as trans from dual;
