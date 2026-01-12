-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/select_queries_with_constraints
-- Concepts: SELECT, WHERE

-- Solution:

-- 1.
SELECT
*
FROM movies
WHERE
    id = 6;

-- 2.
SELECT
*
FROM movies
WHERE
    year BETWEEN 2000 AND 2010;

-- 3.
SELECT
*
FROM movies
WHERE
    year NOT BETWEEN 2000 AND 2010;

-- 4.
SELECT
*
FROM movies
ORDER BY
    year ASC
LIMIT 5;