SELECT FamilyMembers.status,
	FamilyMembers.member_name,
	SUM(amount * unit_price) as costs
FROM FamilyMembers
	JOIN Payments ON FamilyMembers.member_id = Payments.family_member
	JOIN Goods on Payments.good = Goods.good_id
	JOIN GoodTypes on Goods.type = GoodTypes.good_type_id
WHERE GoodTypes.good_type_name = "entertainment"
GROUP BY family_member