-- Platform: DataLemur
-- Difficulty: Medium
-- Problem: https://datalemur.com/questions/uncategorized-calls-percentage

-- Solution:
SELECT
  call_pct AS uncategorised_call_pct
FROM
(
SELECT 
  COALESCE(call_category, 'n/a') AS call_category,
  COUNT(COALESCE(call_category, 'n/a')) AS calls_made,
  ROUND(COUNT(COALESCE(call_category, 'n/a')) * 100/
    SUM(COUNT(COALESCE(call_category, 'n/a'))) OVER (), 1) AS call_pct
FROM callers
GROUP BY COALESCE(call_category, 'n/a')
) AS t
WHERE call_category = 'n/a';