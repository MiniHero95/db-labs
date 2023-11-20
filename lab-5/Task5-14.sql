/*Выведите идентификатор объекта, в котором забронировано наибольшее количество мест (slot). Убедитесь, что в случае ничьей все результаты привязки будут выведены.*/
USE cd;
WITH SlotCounts AS (
    SELECT facid, 
           SUM(slots) AS TotalSlots
    FROM bookings
    GROUP BY facid
)
SELECT
    f.facid,
    f.facility,
    sc.TotalSlots 
FROM  facilities f
JOIN SlotCounts sc ON f.facid = sc.facid
WHERE sc.TotalSlots = (SELECT MAX(TotalSlots) FROM SlotCounts);