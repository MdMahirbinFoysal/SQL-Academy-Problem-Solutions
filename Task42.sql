SELECT TIMEDIFF(
		(
			SELECT Timepair.end_pair
			FROM Timepair
			WHERE id = 4
		),
(
			SELECT Timepair.start_pair
			FROM Timepair
			WHERE Timepair.id = 2
		)
	) as time
FROM Timepair
LIMIT 1;