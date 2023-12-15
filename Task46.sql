SELECT DISTINCT Class.name
FROM Class
	INNER JOIN Schedule on Class.id = Schedule.class
	INNER JOIN Teacher on Schedule.teacher = Teacher.id
WHERE Teacher.last_name = "Krauze"