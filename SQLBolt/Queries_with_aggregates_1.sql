-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/select_queries_with_aggregates
-- Concepts: COUNT, SUM, AVG, MIN, MAX

-- Solution:

-- 1.
SELECT 
    MAX(years_employed) AS longest_time_on_studio
FROM employees;

-- 2.
SELECT 
    role,
    AVG(years_employed) AS avg_years_employed
FROM employees
GROUP BY
    role;

-- 3.
SELECT 
    building,
    SUM(years_employed) AS total_years_worked_in_building
FROM employees
GROUP BY
    building;