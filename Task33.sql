SELECT FLOOR(AVG(Payments.unit_price)) as cost
FROM Payments
	JOIN Goods on Payments.good = Goods.good_id
WHERE Goods.good_name IN ("red caviar", "black caviar")