--INNER JOIN combines rows from both the tables if they meet a specified condition.

--Syntax
SELECT *
FROM table1
   INNER JOIN table2
ON table1.c1 = table2.c2;

--Example
--Get the reviews of course “Cyber Security” (course with id=15)

SELECT student.full_name,
   review.content,
   review.created_at
FROM student
   INNER JOIN review 
ON student.id = review.student_id
WHERE review.course_id = 15;