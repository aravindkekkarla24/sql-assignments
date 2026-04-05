--And operator is used to combine two or more conditions and returns true onlf if all conditions are true
SELECT 
  *
FROM
  product
WHERE
  category = "Clothing"
  AND price <= 1000




--Not operator is used to negate a condition and returns true if the condition is false
SELECT
  *
FROM
  product
WHERE
  NOT name LIKE "%Cake%"


--OR operator is used to combine two or more conditions and returns true if any of the condition is true
SELECT
  *
FROM
  product
WHERE
  brand = "Denim"
  OR brand = "Puma"