-- Platform: DataLemur
-- Difficulty: Easy
-- Problem: https://datalemur.com/questions/final-account-balance

-- Solution:
SELECT
  account_id,
  total_deposit - total_withdrawal AS final_balance
FROM
(
SELECT
  account_id,
  SUM(CASE WHEN transaction_type = 'Deposit' THEN amount ELSE 0 END) AS total_deposit,
  SUM(CASE WHEN transaction_type = 'Withdrawal' THEN amount ELSE 0 END) AS total_withdrawal
FROM transactions
GROUP BY account_id
) AS t;