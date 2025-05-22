-- using sub query in a join sql statement
-- SELECT c.first_name, c.last_name, addr.address, addr.city
-- FROM customer c
-- JOIN (
--   SELECT a.address_id, a.address, ct.city
--   FROM address a
--   JOIN city ct ON a.city_id = ct.city_id
--   WHERE a.district LIKE "California"
-- ) addr
-- USING (address_id);
-- Find film has 1 of 2 specific actor
-- SELECT f.title
-- FROM film f
-- INNER JOIN film_actor fa USING(film_id)
-- INNER JOIN actor a ON a.actor_id = fa.actor_id
-- WHERE (a.last_name LIKE "MCQUEEN" AND a.first_name LIKE "CATE") OR (a.first_name LIKE "CUBA" AND a.last_name LIKE "BIRCH");
-- select FOUND_ROWS();
-- Find film has both of specific actor

-- Find all film has both of actors CATE MCQUEEN and CUA BIRCH
-- SELECT 
--   f.title 
-- FROM film f
--   INNER JOIN film_actor fa1 ON f.film_id = fa1.film_id
--   INNER JOIN actor a1 ON fa1.actor_id = a1.actor_id
--   INNER JOIN film_actor fa2 on f.film_id = fa2.film_id
--   INNER JOIN actor a2 on fa2.actor_id = a2.actor_id
-- WHERE
--   (a1.first_name LIKE "CATE" AND a1.last_name LIKE "MCQUEEN")
-- AND
--   (a2.first_name LIKE "CUBA" AND a2.last_name LIKE "BIRCH")

SELECT 
  f.title
FROM film f
  INNER JOIN film_actor fa1 USING(film_id)
  INNER JOIN actor a USING(actor_id)
WHERE
  (a.first_name LIKE "CATE" AND a.last_name LIKE "MCQUEEN")
OR
  (a.first_name LIKE "CUBA" AND a.last_name LIKE "BIRCH")
GROUP BY f.film_id
HAVING COUNT(*) = 2;



