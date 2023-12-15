SELECT Teacher.last_name
FROM Teacher
	INNER JOIN Schedule on Teacher.id = Schedule.teacher
	INNER JOIN Subject on Schedule.subject = Subject.id
WHERE Subject.name = "Physical Culture"
ORDER BY last_name ASC