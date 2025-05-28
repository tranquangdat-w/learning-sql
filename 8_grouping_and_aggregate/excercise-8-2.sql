select payment.customer_id, count(*)
FROM payment
GROUP BY payment.customer_id
