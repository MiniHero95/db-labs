/*Классифицируйте объекты на группы одинакового размера (высокие, средние и низкие в зависимости от их доходов). Упорядочите по классификации и названию объекта.*/
USE cd;
SELECT DISTINCT
    CASE
        WHEN f.membercost + f.guestcost >= 30 THEN 'Высокие доходы'
        WHEN f.membercost + f.guestcost >= 20 THEN 'Средние доходы'
        ELSE 'Низкие доходы'
    END AS income_group,
    f.facility AS facility_name
FROM
    members m1 
LEFT JOIN
    bookings b ON m1.memid = b.memid
LEFT JOIN
    facilities f ON b.facid = f.facid
GROUP BY
    income_group, facility_name
ORDER BY
    income_group, facility_name;