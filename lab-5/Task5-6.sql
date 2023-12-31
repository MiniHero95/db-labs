/*Cоставьте список общего количества бронирований на каждый объект в месяц в 2012 году.*/
USE cd;
SELECT f.facid,f.facility, MONTH(b.starttime),SUM(b.slots) as number_of_rents
FROM facilities f 
JOIN bookings b ON b.facid=f.facid WHERE YEAR(b.starttime) = 2012
GROUP BY f.facid, f.facility, MONTH(b.starttime)