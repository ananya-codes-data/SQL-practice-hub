-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/invalid-tweets/description/
-- Concepts: SELECT

-- Solution:
SELECT
    tweet_id
FROM tweets
WHERE
    LENGTH(content) > 15;