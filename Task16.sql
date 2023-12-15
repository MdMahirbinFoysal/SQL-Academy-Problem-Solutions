SELECT Passenger.name,
	count(passenger) as count
FROM passenger
	join Pass_in_trip on Passenger.id = Pass_in_trip.passenger
	join Trip on Pass_in_trip.trip = Trip.id
GROUP by passenger
HAVING count >= 1
Order by count desc,
	Passenger.name asc