-- Give assignments to all students with course
-- START TRANSACTION;
-- INSERT INTO student_assignment (sa_student, sa_assignment)
-- SELECT student_id, assignment_id FROM students
-- JOIN student_course ON student_id=sc_student
-- JOIN assignments ON course_id=sc_course
-- ORDER BY Student_ID;
-- COMMIT;
-- ROLLBACK;

-- A list of all the students
SELECT * FROM students;

-- A list of all the trainers
SELECT * FROM trainers;

-- A list of all the assignments
SELECT * FROM assignments;

-- A list of all the courses
SELECT * FROM courses;

-- All the students per course
SELECT student_id, first_name, last_name, title, courses.stream, courses.type FROM students
JOIN student_course ON student_id=sc_student
JOIN courses ON course_id=sc_course;

-- All trainers per course
SELECT trainer_id, first_name, last_name, title, courses.stream, courses.type FROM trainers
JOIN trainer_course ON trainer_id=tc_trainer
JOIN courses ON course_id=tc_course;

-- All the assignments per course
SELECT assignment_id, assignments.title, description, submission, courses.title, courses.stream, courses.type FROM assignments
JOIN courses ON courses.course_id=assignments.course_id;

-- All the assignments per course per student
SELECT student_id, first_name, last_name, courses.title, courses.stream, courses.type, assignments.title, description, submission FROM students
JOIN student_course ON student_id=sc_student
JOIN courses ON course_id=sc_course
JOIN assignments ON courses.course_id=assignments.course_id;

-- A list of students that belong to more than one courses
SELECT * FROM students WHERE student_id IN
	(SELECT sc_student FROM student_course GROUP BY sc_student HAVING count(sc_student)>1);
