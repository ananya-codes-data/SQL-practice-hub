-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/select_queries_with_constraints_pt_2
-- Concepts: SELECT, WHERE

-- Solution:

-- 1.
SELECT
*
FROM movies
WHERE
    title LIKE '%Toy Story%';

-- 2.
SELECT
*
FROM movies
WHERE
    director = 'John Lasseter';

-- 3.
SELECT
*
FROM movies
WHERE
    director != 'John Lasseter';

-- 4.
SELECT
*
FROM movies
WHERE
    title LIKE 'WALL-_';