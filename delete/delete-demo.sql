-- Basic Delete Statement 

DELETE FROM SAMPLE_DATA
WHERE ip_address = '130.37.233.73';

-- NOTE : If the delete condition is not specific multiple rows can be deleted

DELETE FROM SAMPLE_DATA
WHERE gender = 'Male';

-- WARNING : If no condition is specified, all rows can be deleted.

DELETE FROM SAMPLE_DATA;
