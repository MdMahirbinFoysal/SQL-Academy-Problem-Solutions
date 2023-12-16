-- Select the count of trips for each company
WITH TripCounts AS (
	SELECT Company.id,
		COUNT(*) AS tripCount
	FROM Trip
		JOIN Company ON Company.id = Trip.company
	GROUP BY Company.id
) -- Delete companies with the minimum trip count
DELETE FROM Company
WHERE id IN (
		SELECT id
		FROM TripCounts
		WHERE tripCount = (
				SELECT MIN(tripCount)
				FROM TripCounts
			)
	);

//Another way
SELECT COUNT(*),
	Company.name
FROM Trip
	JOIN Company ON Company.id = Trip.company
GROUP BY name;
DELETE FROM Company
WHERE id in(4, 3, 2)

//Another Way
SELECT COUNT(*),
	Company.name
FROM Trip
	JOIN Company ON Company.id = Trip.company
GROUP BY name;
DELETE FROM Company
WHERE id = 4;
DELETE FROM Company
WHERE id = 3;
DELETE FROM Company
WHERE id = 2;