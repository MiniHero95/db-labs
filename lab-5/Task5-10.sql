/*Создайте список общего количества мест, забронированных на один объект в месяц в 2012 году. 
Включите выходные строки, содержащие итоговые суммы за все месяцы по каждому объекту а также итоговые суммы за все месяцы для всех объектов. 
Выходная таблица должна состоять из идентификатора объекта, месяца и слотов, отсортированных по идентификатору и месяцу.*/
USE cd;
SELECT b.facid,MONTH(b.starttime), COALESCE(SUM(slots), 0) AS total_slots
FROM bookings b
JOIN facilities f ON b.facid = f.facid
WHERE YEAR(b.starttime) = 2012
GROUP BY b.facid, MONTH(b.starttime)
WITH ROLLUP
ORDER BY b.facid, MONTH(b.starttime);