-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/revising-aggregations-the-count-function/problem?isFullScreen=true

-- Solution:
SELECT
    COUNT(*) total_city
FROM city
WHERE
    population > 100000;