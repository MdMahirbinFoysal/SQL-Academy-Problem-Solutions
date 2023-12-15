SELECT FLOOR(
		(
			COUNT(*) * 100 /(
				SELECT COUNT(Student.id)
				FROM Student
			)
		)
	) as percent
FROM Student
WHERE YEAR(Student.birthday) = "2000"

//Another Way

SELECT FLOOR(
		(
			COUNT(*) * 100 /(
				SELECT COUNT(Student.id)
				FROM Student
			)
		)
	) as percent
FROM Student
WHERE Student.birthday LIKE "%2000%"