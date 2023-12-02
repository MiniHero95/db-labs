/*Выведите идентификатор объекта, в котором забронировано наибольшее количество мест (slot). Убедитесь, что в случае ничьей все результаты привязки будут выведены.*/
USE cd;
SELECT DISTINCT facid, slots FROM (SELECT facid, slots, RANK() OVER (ORDER BY slots DESC) as maxrank FROM bookings) ranked_bookings
WHERE maxrank = 1;