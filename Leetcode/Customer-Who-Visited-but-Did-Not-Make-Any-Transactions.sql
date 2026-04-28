-- Platform: Leetcode
-- Difficulty: Easy
-- Problem: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/
-- Concepts: Basic Joins

-- Solution:
SELECT
    v.customer_id,
    COUNT(v.customer_id) AS count_no_trans
FROM visits AS v
LEFT JOIN transactions AS t
ON v.visit_id = t.visit_id
WHERE t.visit_id IS NULL
GROUP BY
    v.customer_id
ORDER BY
    v.customer_id;