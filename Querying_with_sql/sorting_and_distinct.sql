--Sorting products by price in ascending order and rating in descending order
SELECT
  name,
  price,
  rating
FROM
  product
WHERE
  name = "Blue Shirt"
ORDER BY
  rating DESC,
  price ASC


--Retrive unique brands from the product table and sort them in ascending order
SELECT
  DISTINCT brand
FROM
  product
ORDER BY
  brand;