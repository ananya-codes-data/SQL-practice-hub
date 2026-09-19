-- Platform: DataLemur
-- Difficulty: Medium
-- Problem: https://datalemur.com/questions/sql-third-transaction

-- Solution:
SELECT
  user_id,
  spend,
  transaction_date
FROM (
  SELECT
    ROW_NUMBER() OVER (
      PARTITION BY user_id 
      ORDER BY transaction_date ASC
    ) AS transaction_rank,
    user_id,
    spend,
    transaction_date
  FROM transactions
) AS t
WHERE rnk = 3
ORDER BY user_id ASC,transaction_date ASC;