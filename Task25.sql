SELECT Goods.good_name
FROM Goods
	LEFT JOIN Payments on Goods.good_id = Payments.good
	and YEAR(Payments.date) = 2005
WHERE Payments.good is null