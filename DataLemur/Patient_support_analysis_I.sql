-- Platform: DataLemur
-- Difficulty: Easy
-- Problem: https://datalemur.com/questions/frequent-callers

-- Solution:
SELECT
    COUNT(policy_holder_id) AS policy_holder_count
FROM (
SELECT
  policy_holder_id,
  COUNT(case_id) AS calls_made
FROM callers
GROUP BY policy_holder_id
HAVING COUNT(case_id) >= 3
) AS t;