select count(payment.customer_id),
  count(distinct payment.customer_id)
FROM payment
