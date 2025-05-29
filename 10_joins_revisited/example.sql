SELECT f.title, f.film_id, count(inv.film_id) 'num copies'
FROM inventory inv RIGHT OUTER JOIN film f ON f.film_id = inv.film_id
GROUP BY f.film_id;

select found_rows();
