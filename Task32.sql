SELECT FLOOR(
		AVG(
			TIMESTAMPDIFF(YEAR, FamilyMembers.birthday, NOW())
		)
	) as age
FROM FamilyMembers