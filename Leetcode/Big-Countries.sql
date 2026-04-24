-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/big-countries/description/
-- Concepts: SELECT

-- Solution:
SELECT
    name,
    population,
    area
FROM world
WHERE
    population >= 25000000
    OR
    area >= 3000000;