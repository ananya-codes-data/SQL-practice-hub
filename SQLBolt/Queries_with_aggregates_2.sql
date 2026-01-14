-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/select_queries_with_aggregates_pt_2
-- Concepts: GROUP BY, HAVING

-- Solution:

-- 1.
SELECT
    COUNT(role) AS artist_roles
FROM employees
WHERE
    role = 'Artist';

-- 2.
SELECT
    role,
    COUNT(*) 
FROM employees
GROUP BY
    role;

-- 3.
SELECT
    role,
    SUM(years_employed) AS years_employed_by_engineers 
FROM employees
WHERE
    role = 'Engineer'
GROUP BY
    role;