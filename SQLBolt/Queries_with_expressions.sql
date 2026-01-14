-- Platform: SQLBolt
-- Problem: Queries_with_expressions
-- Concepts: 

-- Solution:

-- 1.
SELECT 
    m.title, 
    (bo.domestic_sales + bo.international_sales) / 1000000 AS combined_sales
FROM movies AS m
INNER JOIN boxoffice AS bo
    ON m.id = bo.movie_id;

-- 2.
SELECT
    m.title,
    bo.rating * 10
FROM movies AS m
INNER JOIN boxoffice AS bo
    ON m.id = bo.movie_id;

-- 3.
SELECT
*
FROM movies
WHERE
    year % 2 = 0;