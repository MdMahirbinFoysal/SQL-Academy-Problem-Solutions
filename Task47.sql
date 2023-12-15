SELECT COUNT(Schedule.subject) as count
FROM Schedule
	INNER JOIN Teacher on Schedule.teacher = Teacher.id
WHERE Teacher.last_name = "Krauze"
	AND Schedule.date = "2019-08-30"