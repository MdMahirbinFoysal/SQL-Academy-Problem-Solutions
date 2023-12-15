SELECT DISTINCT Company.name
FROM Company
	join Trip on Company.id = Trip.company
WHERE Trip.plane = "Boeing"