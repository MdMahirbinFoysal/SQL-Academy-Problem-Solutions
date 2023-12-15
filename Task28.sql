SELECT COUNT(Trip.plane) as count
FROM Trip
WHERE Trip.town_from = "Rostov"
	and Trip.town_to = "Moscow"