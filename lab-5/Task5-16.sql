/*Составьте список трех крупнейших объектов, приносящих доход (включая связи). 
Вывод названия и ранга объекта, отсортированный по рангу и названию объекта.*/
USE cd;
WITH RevenuePerFacility AS (
    SELECT
        f.facility AS FacilityName,
        f.facid,
        COALESCE(SUM(b.slots * CASE WHEN b.memid = 0 THEN f.guestcost ELSE f.membercost END), 0) AS TotalRevenue
    FROM
        facilities f
    LEFT JOIN
        bookings b ON f.facid = b.facid
    GROUP BY
        f.facid, f.facility
)
SELECT
    FacilityName,
    RANK() OVER (ORDER BY TotalRevenue DESC) AS Ranking,
    TotalRevenue
FROM
    RevenuePerFacility
ORDER BY
    Ranking, FacilityName
LIMIT 3;