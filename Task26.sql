SELECT good_type_name
FROM GoodTypes
WHERE good_type_id NOT IN (
		SELECT Goods.type
		FROM Goods
			JOIN Payments ON Goods.good_id = Payments.good
			AND YEAR(Payments.date) = 2005
	)