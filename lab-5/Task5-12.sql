/*Составьте список имен и идентификаторов каждого участника, а также их первого бронирования после 1 сентября 2012 г. 
Упорядочите по идентификатору участника.*/
USE cd;
SELECT m1.memid,m1.firstname,m1.surname,MIN(b.starttime) AS FirstBookingDate
FROM members m1
JOIN bookings b ON m1.memid = b.memid
WHERE b.starttime IS NOT NULL AND DATE(b.starttime) > '2012-09-01'
GROUP BY m1.memid, m1.firstname, m1.surname
ORDER BY m1.memid;