-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/population-density-difference/problem?isFullScreen=true

-- Solution:
SELECT
    MAX(population) - MIN(population) diff
FROM city;