--Using limit and offset to paginate resukts
--Limit is used to specify the number of records to return
--offset is used to specify the number of records to skip before starting to return records
SELECT
  name,
  price
FROM
  product
ORDER BY
  price ASC
LIMIT
  4 OFFSET 2