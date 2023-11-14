/*выведите членов клуба, которые не арендовали объекты клуба; 
удалите всех членов клуба, которые не арендовали объекты клуба. Проверьте есть ли в клубе член с memid = 37*/
USE cd;
/* Выводим членов клуба, которые не арендовали объекты клуба */
SELECT * FROM members
WHERE memid NOT  IN (SELECT memid FROM bookings);
/* Удаляем членов клуба, которые не арендовали объекты клуба*/
DELETE FROM members
WHERE memid NOT IN (SELECT memid FROM bookings);
/* Проверяем есть ли член клуба с memid = 37 */
SELECT * FROM members WHERE memid = 37;
