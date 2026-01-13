-- Platform: SQLBolt
-- Problem: Multi-table_queries_with_JOINs
-- Concepts: INNER JOIN

-- Solution:

-- 1.
SELECT 
    m.title,
    bo.domestic_sales,
    bo.international_sales
FROM movies AS m
INNER JOIN boxoffice AS bo
    ON m.id = bo.movie_id;

-- 2.
SELECT 
    m.title,
    bo.domestic_sales,
    bo.international_sales
FROM movies AS m
INNER JOIN boxoffice AS bo
    ON m.id = bo.movie_id
WHERE
    bo.international_sales > bo.domestic_sales;

-- 3.
SELECT 
    m.title,
    bo.rating
FROM movies AS m
INNER JOIN boxoffice AS bo
    ON m.id = bo.movie_id
ORDER BY
    rating DESC;