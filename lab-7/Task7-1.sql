/*Создайте функцию, которая рассчитывает стоимость каждой аренды (для каждой записи таблицы bookings).*/
USE cd;
CREATE FUNCTION sum_rents(facid INT, bookid INT, slots INT)
RETURNS INT 
DETERMINISTIC
BEGIN 
   DECLARE rent_cost INT
   SET rent_count=(SELECT IF(memid=0,membercost,guestcost)*slots FROM facilities WHERE facid=facilities.facid);
Return rent_cost;
SELECT sum_rents (facid INT, bookid INT, slots INT) AS rent_cost FROM bookings;

