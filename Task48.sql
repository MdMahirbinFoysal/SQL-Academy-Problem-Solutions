SELECT Class.name,
	COUNT(Student_in_class.class) as count
FROM Class
	INNER JOIN Student_in_class on Class.id = Student_in_class.class
GROUP BY Student_in_class.class
ORDER BY count DESC