/*делаем объединие по именам членов клуба и названиям объектов.*/
USE cd;
SELECT firstname AS "union" FROM members WHERE firstname !="GUEST"
UNION ALL
SELECT facility FROM facilities;