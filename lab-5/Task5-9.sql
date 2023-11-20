/*Создайте список объектов с общим доходом менее 1000. Создайте выходную таблицу, состоящую из названия объекта и дохода, отсортированного по доходу*/
USE cd;
SELECT facility,
SUM(CASE
WHEN bookings.memid = 0 THEN facilities.guestcost 
ELSE facilities.membercost
END) AS total_revenue
FROM facilities
JOIN bookings ON facilities.facid = bookings.facid
GROUP BY facility
HAVING total_revenue < 1000
ORDER BY total_revenue DESC;