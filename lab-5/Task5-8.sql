/*Составьте список объектов вместе с их общим доходом. 
Выходная таблица должна состоять из названия объекта и доходов, отсортированных по доходам. */
USE cd;
SELECT facility,
SUM(CASE
WHEN bookings.memid = 0 THEN facilities.guestcost
ELSE facilities.membercost
END) AS total_revenue
FROM facilities
JOIN bookings ON facilities.facid = bookings.facid
GROUP BY facility
ORDER BY total_revenue DESC;