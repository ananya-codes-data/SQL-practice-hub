-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/weather-observation-station-5/problem?isFullScreen=true

-- Solution:

-- query for the shortest city name
SELECT
    city,
    LENGTH(city) shortest_city
FROM station
ORDER BY
    LENGTH(city) ASC,
    city ASC
LIMIT 1;
-- query for the largest city name
SELECT
    city,
    LENGTH(city) longest_city
FROM station
ORDER BY
    LENGTH(city) DESC,
    city ASC
LIMIT 1;