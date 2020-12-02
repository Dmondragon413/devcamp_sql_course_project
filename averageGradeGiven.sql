SELECT professors_name 'Professor Name', avg(grade_value) as 'Average Grade Given'
FROM grades g 
JOIN courses c 
ON g.grade_course_id = c.courses_id
JOIN professors p 
ON p.professors_id = c.courses_professor_id
GROUP BY professors_name;