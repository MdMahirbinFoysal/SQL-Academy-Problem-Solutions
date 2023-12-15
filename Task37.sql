SELECT MIN(TIMESTAMPDIFF(YEAR, Student.birthday, NOW())) as year
FROM student
LIMIT 1;