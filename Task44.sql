SELECT DISTINCT TIMESTAMPDIFF(YEAR, Student.birthday, NOW()) as max_year
FROM Student
	INNER JOIN Student_in_class on Student.id = Student_in_class.student
	INNER JOIN Class on Student_in_class.class = Class.id
WHERE Class.name LIKE "10%"
LIMIT 1