-- Calculates total score for each player using GROUP BY
SELECT
  name,
  sum(score) AS total_individual_score
FROM
  player_match_details
GROUP BY
  name


-- Counts number of half-centuries (score >= 50) for each player
-- Filters players who have at least 2 half-centuries using HAVING
-- Sorts the result in descending order of half-centuries
SELECT
  name,
  count(*) AS half_centuries
FROM
  player_match_details
WHERE
  score >= 50
GROUP BY
  name
HAVING
  half_centuries >= 2
ORDER BY
  half_centuries DESC