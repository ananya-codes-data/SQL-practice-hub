-- Platform: SQLBolt
-- Problem: Outer_JOINs
-- Concepts: INNER JOIN, LEFT JOIN, RIGHT JOIN, FULL JOIN

-- Solution:

-- 1.
SELECT DISTINCT
    b.building_name
FROM buildings AS b
LEFT JOIN employees AS e
    ON b.building_name = e.building
WHERE
    e.role IS NOT NULL;

-- 2.
SELECT 
* 
FROM buildings;

-- 3.
SELECT DISTINCT
    b.building_name,
    e.role
FROM buildings AS b
LEFT JOIN employees AS e
    ON b.building_name = e.building;