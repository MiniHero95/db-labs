/*Составьте список имен и идентификаторов каждого участника, а также их первого бронирования после 1 сентября 2012 г. 
Упорядочите по идентификатору участника.*/
USE cd;
SELECT m1.memid,CONCAT(m1.firstname, ' ', m1.surname) AS 'full name',MIN(b.starttime) AS FirstBookingDate
FROM members m1
LEFT JOIN bookings b ON m1.memid = b.memid
WHERE b.starttime > '2012-09-01' AND m1.firstname!="Guest"
GROUP BY m1.memid, m1.firstname, m1.surname
ORDER BY m1.memid;