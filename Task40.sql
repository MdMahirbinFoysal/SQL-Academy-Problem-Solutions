SELECT Subject.name as subjects
FROM Subject
	INNER JOIN Schedule on Subject.id = Schedule.subject
	Inner join Teacher on Schedule.teacher = Teacher.id
WHERE Teacher.last_name = "Romashkin"
	AND Teacher.first_name LIKE "P%"
	AND Teacher.middle_name LIKE "P%"
GROUP BY Schedule.subject