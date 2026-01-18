-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/japan-population/problem?isFullScreen=true

-- Solution:
SELECT
    SUM(population)
FROM city
WHERE
    countrycode = 'JPN';