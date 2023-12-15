SELECT DISTINCT Trip.time_in
FROM Trip
	left join Pass_in_trip on Trip.id = Pass_in_trip.trip
	left join Passenger on Pass_in_trip.passenger = Passenger.id
WHERE Passenger.name = "Steve Martin"
	AND Trip.town_to = "London"