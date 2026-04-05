--NATURAL JOIN combines the tables based on the common columns.

--Syntax
SELECT *
FROM table1
   NATURAL JOIN table2;


--Example
SELECT course.name,
  instructor.full_name
FROM course
  NATURAL JOIN instructor
WHERE instructor.full_name = "Alex";
