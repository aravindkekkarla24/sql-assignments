--Create a tempory table to store the result of the first join
--then join the tempory table with the student table to get desired result

SELECT T.name AS course_name,
   student.full_name
FROM (course
   INNER JOIN student_course
ON course.id = student_course.course_id) AS T
   INNER JOIN student
ON T.student_id = student.id
WHERE course.instructor_id = 102;