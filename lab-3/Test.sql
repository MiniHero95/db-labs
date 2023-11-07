USE cd;
SELECT CONCAT(m1.firstname, ' ', m1.surname) AS fiomember, (SELECT CONCAT(m2.firstname, ' ', m2.surname) 
FROM members m2 WHERE m2.memid = m1.recommendedby) AS fiorecommendedby FROM members m1
WHERE m1.memid != 0 ORDER BY fiomember;