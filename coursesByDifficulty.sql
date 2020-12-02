SELECT courses_name AS 'Course Name', AVG(grade_value) 'Grade Average'
FROM courses c
JOIN grades g
ON c.courses_id = g.grade_course_id
GROUP BY courses_name
ORDER BY AVG(grade_value) ASC;