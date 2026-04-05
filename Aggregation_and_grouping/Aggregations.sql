-- Counts total number of rows in the table
select count(*) as total_no_of_rows
from player_match_details


-- Counts non-NULL values in the 'match' column
SELECT
  count(MATCH) AS total_no_of_matches
FROM
  player_match_details


-- Calculates total score of player 'Ram'
SELECT
  name,
  sum(score) AS total_score
FROM
  player_match_details
WHERE
  name = "Ram"


-- Finds maximum and minimum score in the table
SELECT
  max(score) AS maximum_score,
  min(score) AS minimum_score
FROM
  player_match_details