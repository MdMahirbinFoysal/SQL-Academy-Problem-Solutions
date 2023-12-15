SELECT (
		COUNT(*) * 100 /(
			SELECT COUNT(Student.id)
			FROM Student
				JOIN Student_in_class ON Student.id = Student_in_class.student
		)
	) AS percent
FROM Student_in_class
	JOIN Class ON Class.id = Student_in_class.class
	AND name = '10 A';