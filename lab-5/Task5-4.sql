/*Рассчитайте количество аренд каждого из объектов клуба.*/
USE cd;
/*кол-во аренд всех объектов SUM(b.slots)*/
SELECT f.facid,f.facility,SUM(b.slots) as number_of_rents
FROM facilities f JOIN bookings b 
ON b.facid=f.facid
GROUP BY f.facid, f.facility 