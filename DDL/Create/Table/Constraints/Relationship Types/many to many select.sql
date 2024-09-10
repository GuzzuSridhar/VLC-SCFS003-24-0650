SELECT 
    CONCAT(name, ' Has Enrolled to ', course_name) AS details
FROM
    students s,
    courses c,
    enrollments e
WHERE
    s.student_id = e.student_id
        AND c.course_id = e.course_id
ORDER BY name;