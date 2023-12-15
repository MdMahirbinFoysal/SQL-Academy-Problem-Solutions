SELECT Goods.good_name
FROM Goods
	JOIN Payments on Payments.good = Goods.good_id
GROUP BY good
HAVING COUNT(*) > 1