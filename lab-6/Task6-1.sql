/*Выберите начальное и конечное время последних 10 аренд  объектов, упорядочив их по времени их окончания.*/
USE cd;
SELECT starttime AS startime, ADDTIME(starttime, SEC_TO_TIME(slots*1800)) AS endtime 
FROM bookings ORDER BY endtime DESC LIMIT 10;