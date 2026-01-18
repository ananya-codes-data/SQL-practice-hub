-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/revising-aggregations-sum/problem?isFullScreen=true

-- Solution:
SELECT
    SUM(population) total_population
FROM city
WHERE
    district = 'California';