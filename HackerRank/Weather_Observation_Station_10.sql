-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/weather-observation-station-10/problem?isFullScreen=true

-- Solution:
SELECT DISTINCT
    city
FROM station
WHERE  
    city NOT LIKE '%a'
    AND
    city NOT LIKE '%e'
    AND
    city NOT LIKE '%i'
    AND
    city NOT LIKE '%o'
    AND
    city NOT LIKE '%u';