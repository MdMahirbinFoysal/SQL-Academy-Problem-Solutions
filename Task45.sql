SELECT Schedule.classroom
FROM Schedule
GROUP BY Schedule.classroom
HAVING COUNT(*) = (
		SELECT MAX(class_count)
		FROM (
				SELECT COUNT(*) AS class_count
				FROM Schedule
				GROUP BY classroom
			) AS classroom
	);

//Another One

SELECT Schedule.classroom
FROM Schedule
GROUP BY Schedule.classroom
HAVING COUNT(*) > 4

//Another One

SELECT Schedule.classroom
FROM Schedule
GROUP BY Schedule.classroom
HAVING COUNT(Schedule.class) > 4