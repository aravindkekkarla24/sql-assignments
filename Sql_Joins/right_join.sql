-- RIGHT JOIN returns all rows from the right table and matching rows from the left table.
-- If no match, NULL values are returned for left table columns.


--syntax
SELECT *
FROM table1
   RIGHT JOIN table2
ON table1.c1 = table2.c2;


--Example
SELECT course.name,
        instructor.full_name
FROM course
   RIGHT JOIN instructor
ON course.instructor_id = instructor.instructor_id;