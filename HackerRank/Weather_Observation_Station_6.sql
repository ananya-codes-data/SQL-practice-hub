-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/weather-observation-station-6/problem?isFullScreen=true

-- Solution:
SELECT DISTINCT
    city
FROM station
WHERE
    city LIKE 'A%' OR
    city LIKE 'E%' OR
    city LIKE 'I%' OR
    city LIKE 'O%' OR
    city LIKE 'U%';