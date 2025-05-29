-- TEMPORARY table face with UNION ALL
WITH roles AS (SELECT 'Hollywood Star' level, 30 min_roles, 99999 max_roles
UNION ALL
SELECT 'Prolific Actor' level, 20 min_roles, 29 max_roles
UNION ALL
SELECT 'Newcomer' level, 1 min_roles, 19 max_roles)

-- solution 1
-- SELECT fa.actor_id, (select roles.level from roles WHERE count(*) BETWEEN roles.min_roles and roles.max_roles) as 'role level'
-- FROM film_actor fa
-- GROUP BY fa.actor_id;

-- solution 2
SELECT actr.actor_id, roles.level
FROM
(SELECT actor_id, count(*) num_roles
FROM film_actor
GROUP BY actor_id
) actr
INNER JOIN roles ON actr.num_roles BETWEEN roles.min_roles AND roles.max_roles;

select found_rows()

