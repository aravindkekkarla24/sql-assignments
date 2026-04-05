-- FULL JOIN returns all rows from both tables.
-- Matching rows are combined, and non-matching rows get NULL values on the missing side.

--Syntax
SELECT *
FROM table1
   FULL JOIN table2
ON table1.c1 = table2.c2;


--Example
SELECT course.name,
        instructor.full_name
FROM course
   FULL JOIN instructor
ON course.instructor_id = instructor.instructor_id;

