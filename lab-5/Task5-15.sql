/*Составьте список участников (включая гостей) вместе с количеством часов, которые они забронировали для объекта,  округленным до ближайших десяти часов. 
Ранжируйте их по этой округленной цифре, получая в результате имя, фамилию, округленные часы и звание. Сортировка по званию, фамилии и имени.*/
USE cd;
SELECT m1.firstname AS 'name', m1.surname AS 'surname', ROUND(SUM(b.slots) / 2, -1) AS 'hours',
RANK() OVER (ORDER BY ROUND(SUM(b.slots) / 2, -1)) AS ranks
FROM members AS m1
INNER JOIN bookings b ON m1.memid = b.memid
GROUP BY m1.memid
ORDER BY ranks, m1.surname, m1.firstname;