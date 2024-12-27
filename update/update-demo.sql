-- Basic Update Statement 

UPDATE SAMPLE_DATA
SET first_name = 'John'
WHERE email ='mchace6@usnews.com';

-- NOTE : Use a specific where clause so as to update only one row of data

UPDATE SAMPLE_DATA
SET first_name = 'John'
WHERE gender = 'Male';

-- WARNING : If you dont specify the where clause all rows will be updated

UPDATE SAMPLE_DATA
SET first_name = 'John';
