SELECT DISTINCT FamilyMembers.status
FROM FamilyMembers
	JOIN Payments on FamilyMembers.member_id = Payments.family_member
	JOIN Goods on good_id = Payments.good
WHERE Goods.good_name = "potato"