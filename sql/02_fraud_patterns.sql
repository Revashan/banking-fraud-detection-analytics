\*-- Fraud by amount bucket*\
  
SELECT
  CASE
    WHEN Amount < 10 THEN 'Low'
    WHEN Amount < 100 THEN 'Medium'
    ELSE 'High'
  END AS amount_bucket,
  COUNT(*) AS txns,
  SUM(CASE WHEN Class=1 THEN 1 ELSE 0 END) AS frauds
FROM credit_card_transactions
GROUP BY amount_bucket
ORDER BY frauds DESC;
