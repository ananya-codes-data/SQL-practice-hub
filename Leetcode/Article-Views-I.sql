-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/article-views-i/description/
-- Concepts: SELECT

-- Solution:
SELECT DISTINCT
    author_id AS id
FROM views
WHERE
    author_id = viewer_id
ORDER BY
    author_id ASC;