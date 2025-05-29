-- correct
SELECT c.first_name, c.last_name
FROM customer c
WHERE last_name LIKE "L%"
UNION
SELECT a.first_name, a.last_name
FROM actor a
WHERE last_name LIKE "L%";

SELECT FOUND_ROWS();
