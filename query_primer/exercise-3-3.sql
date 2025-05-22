SELECT rental.customer_id
FROM rental
WHERE date(rental.return_date) = '2005-07-05'

