select payment.customer_id, count(*), sum(payment.amount)
FROM payment
GROUP BY payment.customer_id
having count(*) >= 40
