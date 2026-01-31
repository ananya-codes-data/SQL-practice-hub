-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/deleting_rows
-- Concepts: DELETE

-- Solution:

-- 1.
DELETE FROM movies
WHERE
    year < 2005;

-- 2.
DELETE FROM movies
WHERE
	director = "Andrew Stanton";
