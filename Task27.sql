SELECT GoodTypes.good_type_name,
	SUM(amount * unit_price) AS costs
FROM GoodTypes
	INNER JOIN Goods ON GoodTypes.good_type_id = Goods.type
	INNER JOIN Payments ON Goods.good_id = Payments.good
	AND YEAR(Payments.date) = 2005
GROUP BY GoodTypes.good_type_name