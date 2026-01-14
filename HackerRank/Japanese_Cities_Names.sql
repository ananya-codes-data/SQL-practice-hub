-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:http://hackerrank.com/challenges/japanese-cities-name/problem?isFullScreen=true

-- Solution:
SELECT
    name
FROM city
WHERE
    countrycode = 'JPN';