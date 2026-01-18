-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/average-population/problem?isFullScreen=true

-- Solution:
SELECT
    ROUND(AVG(population), 0) avg_population
FROM city;