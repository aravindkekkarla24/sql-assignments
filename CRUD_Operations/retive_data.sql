-- Retrive all columns and rows from the table
SELECT
  *
FROM
  exams
  
  
-- Retrive specific column
SELECT
  subject_name,
  syllabus
FROM
  exams


-- Retrive specific row based on condition
SELECT
  *
FROM
  exams
WHERE
  subject_name = "Mathametics"