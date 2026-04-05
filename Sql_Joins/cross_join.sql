-- CROSS JOIN returns all possible combinations of rows from both tables.
-- Each row of the first table is combined with every row of the second table.

--Syntax
SELECT *
FROM table1
   CROSS JOIN table2;


--Example
SELECT course.name AS course_name,
        instructor.full_name AS instructor_name
FROM course
   CROSS JOIN instructor;