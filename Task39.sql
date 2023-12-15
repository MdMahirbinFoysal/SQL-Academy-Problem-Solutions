SELECT COUNT(*) as count
FROM Class
	INNER JOIN Student_in_class on Class.id = Student_in_class.class
WHERE Class.name LIKE "%10 B%"
GROUP BY Student_in_class.class