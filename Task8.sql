SELECT Trip.town_to,
	TIMEDIFF(time_in, time_out) as flight_time
FROM Trip
WHERE Trip.town_from = "Paris"

// Another one
SELECT Trip.town_to,
	TIMEDIFF(time_in, time_out) as flight_time
FROM Trip
WHERE Trip.town_from = "Paris"