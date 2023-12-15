SELECT Pass_in_trip.trip,
	COUNT(passenger) as count
FROM Pass_in_trip
GROUP BY Pass_in_trip.trip
ORDER BY count DESC