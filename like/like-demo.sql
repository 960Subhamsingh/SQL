SELECT * FROM SAMPLE_DATA;

-- Finds values where first names start with "a"

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE 'a%';

-- Finds any values that end with "a"

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE '%a';

-- Finds any values that have "r" present in any position

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE '%r%';

-- Finds any values that have "r" in the second position

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE '_r%';

-- Finds any values that start with "l" and are at least 3 characters in length

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE 'l__%';

-- Finds any values that start with "j" and ends with "n"

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE 'j%n';

-- Finds any values staring with "b","s" or "p"

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE '[bsp]%';

-- Finds any values NOT staring with "b","s" or "p"

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE '[^bsp]%';

-- Finds any values NOT staring with in range "a","b","c","d","e" (a-e)

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE '[a-e]%';

-- Like + Wildcards can be combined using AND + OR

SELECT * FROM SAMPLE_DATA
WHERE first_name LIKE 'a%' AND last_name LIKE 'a%';
