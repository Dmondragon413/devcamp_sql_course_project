SELECT courses_name AS 'Course Name', COUNT(students_id) AS '# of Students'
FROM students s
JOIN grades g 
ON s.students_id = g.grade_student_id
JOIN courses c
ON c.courses_id = g.grade_course_id
GROUP BY courses_name;