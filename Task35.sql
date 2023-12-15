SELECT COUNT(*) as count
FROM Class
	Inner JOIN Schedule on Class.id = Schedule.class
WHERE DATE(Schedule.date) = '2019-09-02'