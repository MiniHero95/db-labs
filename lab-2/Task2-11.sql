/*делаем объединие по именам членов клуба и названиям объектов.
первый столбец отвечает за объединие имен членов клуба и названия объектов.
Второй столбец отвечает за то, откуда были взяты они(из members или facilities).*/
USE cd;
SELECT firstname AS "union", "member" AS "members/facilies" FROM members
UNION ALL
SELECT facility, "facility" AS "members/facilies" FROM facilities;