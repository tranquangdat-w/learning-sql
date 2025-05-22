-- Write a query that returns the title of every film in which an actor with the first name JOHN appeared
SELECT f.title
FROM film f
  INNER JOIN film_actor ON f.film_id = film_actor.film_id
  INNER JOIN actor ON film_actor.actor_id = actor.actor_id
WHERE
  actor.first_name LIKE "JOHN";

SELECT FOUND_ROWS();
