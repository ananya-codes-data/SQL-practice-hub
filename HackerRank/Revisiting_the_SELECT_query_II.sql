-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/revising-the-select-query-2/problem?isFullScreen=true

-- Solution:

SELECT
    name
FROM city
WHERE
    countrycode ='USA'
    AND
    population > 120000;