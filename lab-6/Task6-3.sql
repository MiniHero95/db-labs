/*Выберите процент использования объектов по месяцам, упорядочив по возрастанию*/
USE cd;
WITH slots as (
  SELECT facility, SUM(b.slots) as rent_count,
      DATE_FORMAT(b.starttime, "%m %Y") as year__month
    FROM facilities f
      JOIN bookings b ON b.facid = f.facid
    GROUP BY f.facid, year__month
)
SELECT s1.facility, CONCAT(ROUND(s1.rent_count / SUM(s2.rent_count) * 100, 1), '%') as usability,
    s1.year__month
  FROM slots s1
    JOIN slots s2 ON s1.year__month = s2.year__month
  GROUP BY s1.facility, s1.rent_count, s1.year__month
  ORDER BY CAST(usability as FLOAT) ASC;