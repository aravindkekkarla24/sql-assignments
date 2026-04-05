--LEFT JOIN returns all rows from the left table and matching rows from the right table. If no match return NULL values


--syntax
SELECT *
FROM table1
   LEFT JOIN table2 
ON table1.c1 = tabl2.c2;

--Example
--Fetch the full_name of students who have not enrolled for any course

SELECT student.full_name
FROM student
   LEFT JOIN student_course
ON student.id = student_course.student_id
WHERE student_course.id IS NULL;