SELECT students_name AS "Student", professors_name AS "Professor", COUNT(*) as "Classes in Common"
FROM grades
JOIN students
ON grades.grade_student_id = students_id
JOIN courses c 
ON c.courses_id = grades.grade_course_id
JOIN professors p
ON c.courses_professor_id = professors_id
GROUP BY professors_name, students_name
ORDER BY COUNT(*);