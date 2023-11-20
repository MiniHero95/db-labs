/*Составьте список объектов вместе с их общим доходом. 
Выходная таблица должна состоять из названия объекта и доходов, отсортированных по доходам. */
USE cd;
SELECT facility,
SUM(CASE
WHEN b.memid = 0 THEN f.guestcost
ELSE f.membercost
END) AS total_revenue
FROM facilities f
JOIN bookings b ON f.facid = b.facid
GROUP BY facility
ORDER BY total_revenue DESC;