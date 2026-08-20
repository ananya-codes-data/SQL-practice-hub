-- Platform: DataLemur
-- Difficulty: Medium
-- Problem: https://datalemur.com/questions/histogram-users-purchases

-- Solution:
SELECT
  transaction_date,
  user_id,
  purchase_count
FROM
(
SELECT
  transaction_date,
  user_id,
  COUNT(user_id) AS purchase_count,
  ROW_NUMBER() OVER (ORDER BY transaction_date DESC) AS rnk
FROM user_transactions
GROUP BY user_id, transaction_date
) AS t
WHERE rnk <= 3
ORDER BY transaction_date ASC, user_id ASC