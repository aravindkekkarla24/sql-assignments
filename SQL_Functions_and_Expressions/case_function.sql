-- Calculate profit and tax amount based on profit ranges
SELECT
  id,
  name,
  (collection_in_cr - budget_in_cr) AS profit,
  CASE
    WHEN (collection_in_cr - budget_in_cr) <= 100 THEN (collection_in_cr - budget_in_cr) * 0.1
    WHEN (
      collection_in_cr - budget_in_cr > 100
      AND collection_in_cr - budget_in_cr <= 500
    ) THEN (collection_in_cr - budget_in_cr) * 0.15
    ELSE (collection_in_cr - budget_in_cr) * 0.18
  END AS tax_amount
FROM
  movie;


-- Categorize movies based on rating
SELECT
  name,
  rating,
  CASE
    WHEN rating > 9 THEN "good"
    WHEN rating < 7 THEN "poor"
    ELSE "Average"
  END AS "Review"
FROM
  movie;