SELECT Pass_in_trip.trip,
	COUNT(Pass_in_trip.passenger) as count
FROM Pass_in_trip
GROUP BY Pass_in_trip.trip