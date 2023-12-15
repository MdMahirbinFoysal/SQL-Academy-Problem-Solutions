SELECT Passenger.name
FROM Passenger
Group BY Passenger.name
HAVING COUNT(Passenger.name) > 1