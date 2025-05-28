-- Lay ra lastname, firstname, id cua customer co id lon nhat
-- select c.last_name, c.first_name, c.customer_id
-- from customer c
-- where c.customer_id = (select max(customer_id) from customer)
-- first_name PENELOPE 

select * from actor_info where first_name LIKE "PENELOPE"
