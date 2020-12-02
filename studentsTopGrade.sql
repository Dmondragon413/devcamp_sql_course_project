SELECT students_name 'Student Name', MAX(grade_value) AS 'Top grade'
FROM students s 
JOIN grades g 
ON s.students_id = g.grade_student_id
GROUP BY students_name;