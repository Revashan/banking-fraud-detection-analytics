\*-- High-risk transactions for investigation*\

SELECT *
FROM credit_card_transactions
WHERE Amount > 500
  AND Class = 1
ORDER BY Amount DESC;
