/*Рассчитайте кол-во рекомендаций данных этим членом клуба,исключив членов, которые не давали рекомендаций.*/
USE cd;
/*Выбрал членов клуба,которые рекомендовали других.
Сount(m2.memid) кол-во рекомендаций этим членом клуба*/
SELECT m1.memid,m1.surname, m1.firstname ,COUNT(m2.memid) AS Number_of_recommend
FROM members m1 JOIN members m2
ON m1.memid=m2.recommendedby
GROUP BY m1.memid,m1.surname,m1.firstname;