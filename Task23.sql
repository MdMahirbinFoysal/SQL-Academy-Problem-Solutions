SELECT Goods.good_name,
	MAX(Payments.unit_price) as unit_price
FROM Goods
	JOIN Payments on Payments.good = Goods.good_id
	JOIN GoodTypes on GoodTypes.good_type_id = Goods.type
WHERE GoodTypes.good_type_name = "delicacies"
GROUP BY good
LIMIT 1