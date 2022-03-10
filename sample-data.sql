USE bottega_schema;

-- ----------
-- Professors
-- ----------
INSERT INTO professors(professors_title, professors_name, professors_email)
VALUES ("Mr.", "G. Morales", "g.morales@bottega.edu");

INSERT INTO professors(professors_title, professors_name, professors_email)
VALUES ("Mrs.", "E. Bray", "e.bray@bottega.edu");

-- ----------
-- Students
-- ----------
INSERT INTO students(students_name, students_email)
VALUES ("Gabriel Flefel", "gabriel@bottega.edu");

INSERT INTO students(students_name, students_email)
VALUES ("Daniel Flefel", "daniel@bottega.edu");

INSERT INTO students(students_name, students_email)
VALUES ("Timothy Flefel", "timothy@bottega.edu");

INSERT INTO students(students_name, students_email)
VALUES ("Theo Flefel", "theo@bottega.edu");

INSERT INTO students(students_name, students_email)
VALUES ("Cindy Flefel", "cindy@bottega.edu");

INSERT INTO students(students_name, students_email)
VALUES ("Ashton Flefel", "ashton@bottega.edu");


-- ----------
-- Courses
-- ----------
INSERT INTO courses(courses_title, courses_professors_id, courses_students_id)
VALUES ("Math", 1, 1);

INSERT INTO courses(courses_title, courses_professors_id, courses_students_id)
VALUES ("Math", 1, 2);

INSERT INTO courses(courses_title, courses_professors_id, courses_students_id)
VALUES ("Math", 1, 3);

INSERT INTO courses(courses_title, courses_professors_id, courses_students_id)
VALUES ("Biology", 2, 4);

INSERT INTO courses(courses_title, courses_professors_id, courses_students_id)
VALUES ("Biology", 2, 5);

INSERT INTO courses(courses_title, courses_professors_id, courses_students_id)
VALUES ("Biology", 2, 6);

INSERT INTO courses(courses_title, courses_professors_id, courses_students_id)
VALUES ("Math", 1, 4);

INSERT INTO courses(courses_title, courses_professors_id, courses_students_id)
VALUES ("Calculus", 1, 4);


-- ----------
-- Grades
-- ----------
INSERT INTO grades(grades_value, grades_students_id, grades_courses_id)
VALUES (4.00, 1, 1);

INSERT INTO grades(grades_value, grades_students_id, grades_courses_id)
VALUES (4.00, 2, 2);

INSERT INTO grades(grades_value, grades_students_id, grades_courses_id)
VALUES (3.50, 3, 3);

INSERT INTO grades(grades_value, grades_students_id, grades_courses_id)
VALUES (3.50, 4, 4);

INSERT INTO grades(grades_value, grades_students_id, grades_courses_id)
VALUES (3.50, 5, 5);

INSERT INTO grades(grades_value, grades_students_id, grades_courses_id)
VALUES (4.00, 6, 6);

INSERT INTO grades(grades_value, grades_students_id, grades_courses_id)
VALUES (4.00, 4, 7);

INSERT INTO grades(grades_value, grades_students_id, grades_courses_id)
VALUES (4.00, 4, 8);
