-- SELECT f.title FROM film f WHERE f.film_id in (SELECT fc.film_id FROM category c inner join film_category fc ON fc.category_id = c.category_id WHERE c.name = "Action");

SELECT f.title 
FROM film f 
WHERE EXISTS
(SELECT 1 FROM category c INNER JOIN film_category fc ON fc.category_id = c.category_id WHERE c.name = "Action" AND f.film_id = fc.film_id);

SELECT found_rows();
