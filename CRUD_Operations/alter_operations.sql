--Adding column to existing table
ALTER TABLE
  exams
ADD
  attendence_percentage float

--Rename column
ALTER TABLE
  exams RENAME is_result_released TO result_status


--Delete column
alter table exams
drop column attendence_percentagemk