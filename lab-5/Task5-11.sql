/*Составьте список общего количества часов, забронированных на один объект, помня, что интервал длится полчаса. 
Выходная таблица должна состоять из идентификатора объекта, имени и забронированных часов, отсортированных по идентификатору объекта. 
Попробуйте отформатировать часы с точностью до двух десятичных знаков.*/
USE cd;
SELECT f.facid,
       f.facility,
       ROUND(SUM(b.slots) / 2.0, 2) AS ReservedHours
FROM facilities f
JOIN bookings b ON f.facid = b.facid
GROUP BY f.facid, f.facility
ORDER BY f.facid;