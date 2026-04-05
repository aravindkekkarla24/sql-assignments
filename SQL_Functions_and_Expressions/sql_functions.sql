-- Get movie name and release year
SELECT
  name,
  strftime("%Y", release_date) AS release_year
FROM
  movie


-- Count movies per month in 2010
SELECT
  strftime('%m', release_date) AS MONTH,
  COUNT(*) AS total_movies
FROM
  movie
WHERE
  strftime('%Y', release_date) = '2010'
GROUP BY
  MONTH;


-- Count Action movies in 2010
SELECT
  count(name) AS total_movies
FROM
  movie
WHERE
  strftime("%Y", release_date) = "2010"
  AND genre = "Action"


-- Get movies released in April, May, June
SELECT
  name
FROM
  movie
WHERE
  strftime("%m", release_date) IN ("04", "05", "06")


-- Find month with highest movie releases
SELECT
  strftime("%m", release_date) AS MONTH,
  count(name) AS total_movies
FROM
  movie
GROUP BY
  MONTH
ORDER BY
  total_movies DESC
LIMIT
  1