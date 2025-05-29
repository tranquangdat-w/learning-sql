-- Construct a query that returns all addresses that are in the same city
SELECT a1.address, a2.address, a1.city_id
FROM address a1
  INNER JOIN address a2 ON a1.city_id = a2.city_id 
WHERE
  a1.address_id <> a2.address_id; 

SELECT FOUND_ROWS();
