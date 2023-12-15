SELECT DISTINCT Passenger.name
FROM Passenger
	JOIN Pass_in_trip ON Passenger.id = Pass_in_trip.passenger
	JOIN Trip On Pass_in_trip.trip = Trip.id
WHERE Trip.plane = "TU-134"
	AND Trip.town_to = "Moscow"