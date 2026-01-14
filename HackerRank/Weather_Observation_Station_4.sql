-- Platform: HackerRank
-- Difficulty: Easy
-- Problem:https://www.hackerrank.com/challenges/weather-observation-station-4/problem?isFullScreen=true

-- Solution:
SELECT
    COUNT(city) - COUNT(DISTINCT city) diff
FROM station;