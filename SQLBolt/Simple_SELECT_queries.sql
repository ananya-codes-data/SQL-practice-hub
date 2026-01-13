-- Platform: SQLBolt
-- Problem: Simple_SELECT_queries
-- Concepts: SELECT, WHERE,ORDER BY, LIMIT, OFFSET

-- Solution:

-- 1.
SELECT
*
FROM north_american_cities
WHERE
    country = 'Canada';

-- 2.
SELECT 
* 
FROM north_american_cities
WHERE
    country = 'United States'
ORDER BY
    latitude DESC;

-- 3.
SELECT 
* 
FROM north_american_cities
WHERE
    longitude < -87.629798
ORDER BY
    longitude ASC;

-- 4.
SELECT 
* 
FROM north_american_cities
WHERE
    country = 'Mexico'
ORDER BY
    population DESC
LIMIT 2;

-- 5.
SELECT 
* 
FROM north_american_cities
WHERE
    country = 'United States'
ORDER BY
    population DESC
LIMIT 2
OFFSET 2;