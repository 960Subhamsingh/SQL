SELECT
    *
FROM
    pizza
WHERE
    pizza_size IN (
        SELECT
            pizza_size
        FROM
            pizza
        WHERE
            pizza_size LIKE 'M%'
    );