\*-- Overall fraud rate*\
SELECT
  COUNT(*) AS total_txns,
  SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) AS fraud_txns,
  100.0 * SUM(CASE WHEN Class = 1 THEN 1 ELSE 0 END) / COUNT(*) AS fraud_rate_pct
FROM credit_card_transactions;
