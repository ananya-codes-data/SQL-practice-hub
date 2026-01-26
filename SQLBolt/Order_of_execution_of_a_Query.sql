-- Platform: SQLBolt
-- Problem: https://sqlbolt.com/lesson/select_queries_order_of_execution
-- Concepts: Order of query execution

-- Solution:

-- 1.
SELECT
    director,
    COUNT(*)
FROM movies
GROUP BY
    director;

-- 2.
SELECT 
    m.director,
    (SUM(bo.domestic_sales) + SUM(bo.international_sales)) AS total_sales
FROM movies AS m
INNER JOIN boxoffice AS bo
    ON m.id = bo.movie_id
GROUP BY
    m.director;
