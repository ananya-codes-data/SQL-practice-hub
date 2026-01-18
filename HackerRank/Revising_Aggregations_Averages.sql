-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:http://hackerrank.com/challenges/revising-aggregations-the-average-function/problem?isFullScreen=true

-- Solution:
SELECT
    AVG(population) avg_population
FROM city
WHERE
    district = 'California';