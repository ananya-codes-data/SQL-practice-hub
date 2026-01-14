-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/revising-the-select-query/problem?isFullScreen=true

-- Solution:

SELECT
*
FROM city
WHERE
    countrycode = 'USA'
    AND
    population > 100000;