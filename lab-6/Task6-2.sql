/*Выберите количество аренд объектов клуба в каждый месяц.*/
USE cd;
SELECT f.facility,YEAR(b.starttime) AS 'YEAR',MONTH(b.starttime) AS 'MONTH', COUNT(*) AS 'number of rents' FROM facilities f
INNER JOIN bookings b ON f.facid = b.facid
GROUP BY f.facility,YEAR(b.starttime),MONTH(b.starttime);