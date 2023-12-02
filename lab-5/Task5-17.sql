/*Классифицируйте объекты на группы одинакового размера (высокие, средние и низкие в зависимости от их доходов). Упорядочите по классификации и названию объекта.*/
USE cd;
SELECT facility, 
CASE 
  WHEN incomegroup = 1 THEN 'Высокий'
  WHEN incomegroup = 2 THEN 'Средний'
  WHEN incomegroup = 3 THEN 'Низкий'
END AS incomegroup
FROM (
  SELECT f.facility, SUM(IF(b.memid = 0, f.guestcost * b.slots, f.membercost * b.slots)) AS revenue,
  NTILE(3) OVER (ORDER BY SUM(IF(b.memid = 0, f.guestcost * b.slots, f.membercost * b.slots))) AS incomegroup
  FROM facilities f
  INNER JOIN bookings b ON f.facid = b.facid
  GROUP BY f.facility
) as subquery
ORDER BY incomegroup, facility;