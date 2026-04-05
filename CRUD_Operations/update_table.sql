--Update all rows to specific column
UPDATE
  exams
SET
  is_result_released = 1




--Update specific row related to specific column based on condition
UPDATE
  exams
SET
  pass_percentage = 75.24
WHERE
  subject_name = "Mathametics"