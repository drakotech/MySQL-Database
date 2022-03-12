USE bottega_schema;


-- ----------------------------
-- Average Grade by Professor
-- ----------------------------
SELECT
professors_title AS "Title",
professors_name AS "Name",
ROUND(AVG(grades_value),2) AS "Average Grade"
FROM grades
JOIN courses
ON grades_courses_id = courses_id
JOIN professors
ON courses_professors_id = professors_id
GROUP BY courses_professors_id;


-- -------------------------
-- Top Grades by Student
-- -------------------------
SELECT 
s.students_name AS "Student",
g.grades_value AS "Top Grade", 
c.courses_title AS "Course"
FROM grades g
JOIN students s
ON g.grades_students_id = s.students_id
JOIN courses c
ON g.grades_courses_id = c.courses_id
WHERE grades_value = (
	SELECT MAX(grades_value) 
    FROM grades sg 
    WHERE g.grades_students_id = sg.grades_students_id
	GROUP BY grades_students_id
    )
GROUP BY s.students_name
ORDER BY g.grades_value DESC;


-- -----------------------------------------
-- Courses Grouped by Students Enrolled
-- -----------------------------------------
SELECT
courses_title AS "Course",
students_name AS "Students Enrolled"
FROM students
JOIN courses
ON students_id = courses_students_id
GROUP BY courses_title, students_name
ORDER BY courses_title;


-- --------------------------------------------------------
-- Course Average Grades Summary Report - Sorted by Grade
-- --------------------------------------------------------
SELECT
courses_title AS "Course",
ROUND(AVG(grades_value),2) AS "Average Grade"
FROM courses
JOIN grades
ON courses_id = grades_courses_id
GROUP BY courses_title
ORDER BY AVG(grades_value);



-- -------------------------------------------------------
-- Most Courses in Common Between Student and Professor
-- -------------------------------------------------------
SELECT 
s.students_name AS "Student",
p.professors_name AS "Professor", 
COUNT(professors_name) AS "Common Courses",
COUNT(students_name) AS "Common Courses"
FROM courses c
JOIN students s
ON c.courses_students_id = s.students_id
JOIN professors p
ON c.courses_professors_id = p.professors_id;
