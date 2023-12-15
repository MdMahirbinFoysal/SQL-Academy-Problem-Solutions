SELECT Company.name
FROM Company
	JOIN Trip on Company.id = Trip.company
Where Trip.town_from = "Vladivostok"