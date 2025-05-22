-- SELECT c.last_name, c.first_name
-- FROM customer c
-- WHERE c.first_name LIKE "J%" and c.last_name LIKE "D%"
-- UNION ALL
-- SELECT a.last_name, a.first_name
-- FROM actor a
-- WHERE a.first_name LIKE "J%" and a.last_name LIKE "D%";
-- SELECT FOUND_ROWS();

-- SELECT c.first_name, c.last_name
-- FROM customer c
-- WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%'
-- INTERSECT
-- SELECT a.first_name, a.last_name
-- FROM actor a
-- WHERE a.first_name LIKE 'J%' AND a.last_name LIKE 'D%';

SELECT a.first_name, a.last_name
FROM actor a
WHERE a.first_name LIKE 'J%' AND a.last_name LIKE 'D%'
EXCEPT
SELECT c.first_name, c.last_name
FROM customer c
WHERE c.first_name LIKE 'J%' AND c.last_name LIKE 'D%';
