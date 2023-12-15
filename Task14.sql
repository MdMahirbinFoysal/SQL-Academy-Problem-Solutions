SELECT Trip.town_to
FROM Trip
	left join Pass_in_trip ON Trip.id = Pass_in_trip.trip
	LEFT join Passenger on Passenger.id = Pass_in_trip.passenger
WHERE Passenger.name = "Bruce Willis"