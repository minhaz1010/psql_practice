-- Query-01
-- INSERT some random data in students table

INSERT INTO students (student_name, age, email, frontend_mark, backend_mark, status) 
VALUES
('Montu', 23, 'montu@example.com', 40, 60, NULL);

-- Query-02
-- Retrieve the names of all students who are enrolled in the course titled 'Next.Js'

SELECT student_name FROM students
INNER JOIN enrollment ON students.student_id=enrollment.student_id
INNER JOIN courses ON enrollment.course_id=courses.course_id
WHERE courses.course_name='Next.js';

--  Query-03
-- update status to 'Awarded' who has the highest mark
UPDATE students 
SET status='Awarded'
WHERE(student_name = (SELECT student_name FROM students
GROUP BY student_name
ORDER BY sum(frontend_mark+backend_mark) DESC
LIMIT 1));

-- Query-04
-- delete those course that are not enrolled by students 
DELETE FROM courses
WHERE course_id NOT IN(
  SELECT DISTINCT course_id
  FROM enrollment
);

-- Query-05

SELECT student_name FROM students
ORDER BY student_id ASC
LIMIT 2 OFFSET 2;

-- Query-06
-- Using LEFT JOIN to retreive the course names and the number of students enrolled in each course

SELECT course_name, COUNT(course_id) as students_enrolled FROM students
LEFT JOIN enrollment USING(student_id)
LEFT JOIN courses USING(course_id)
WHERE enrollment.course_id IS NOT NULL
GROUP BY course_name;

-- Query-07

SELECT ROUND(avg(age),2) as average_age FROM students;

-- Query-08
--  find those students who has example.com in mail
SELECT student_name FROM students
WHERE email ILIKE('%example.com%');


