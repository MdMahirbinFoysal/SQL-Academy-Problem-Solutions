SELECT FamilyMembers.member_name,
	FamilyMembers.status,
	SUM(unit_price * amount) as costs
from FamilyMembers
	join Payments on FamilyMembers.member_id = Payments.family_member
WHERE Payments.date LIKE '%2005%'
GROUP by Payments.family_member

//Another Way
SELECT FamilyMembers.member_name,
	FamilyMembers.status,
	SUM(unit_price * amount) as costs
from FamilyMembers
	join Payments on FamilyMembers.member_id = Payments.family_member
WHERE Payments.date LIKE '%2005%'
GROUP by Payments.family_member

//Another Way

SELECT FamilyMembers.member_name,
	FamilyMembers.status,
	SUM(unit_price * amount) as costs
from FamilyMembers
	join Payments on FamilyMembers.member_id = Payments.family_member
WHERE Payments.date LIKE '%2005%'
GROUP by Payments.family_member