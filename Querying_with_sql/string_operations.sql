-- Retrieve products wwith name Blue shirt
SELECT
  *
FROM
  product
WHERE
  name LIKE "Blue Shirt"


--Retrive products wuth name starting with Blue
SELECT
  *
FROM
  product
WHERE
  name LIKE "Blue%"


--Retrive products with name ending with Jeans
SELECT
  *
FROM
  product
WHERE
  name LIKE "%Jeans"



--Retrive products with name containing Smart
SELECT
  *
FROM
  product
WHERE
  name LIKE "%Smart%"


--Retrive products with category of 4 characters
SELECT
  *
FROM
  product
WHERE
  category LIKE "____"