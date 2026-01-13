-- Platform: SQLBolt
-- Problem: NULLs
-- Concepts: IS NULL, IS NOT NULL

-- Solution:

-- 1.
SELECT 
* 
FROM employees
WHERE
    building IS NULL;

-- 2.
SELECT 
    b.building_name,
    e.role
FROM buildings AS b
LEFT JOIN employees AS e
    ON b.building_name = e.building
WHERE
    role IS NULL;