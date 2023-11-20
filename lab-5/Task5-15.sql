/*Составьте список участников (включая гостей) вместе с количеством часов, которые они забронировали для объекта,  округленным до ближайших десяти часов. 
Ранжируйте их по этой округленной цифре, получая в результате имя, фамилию, округленные часы и звание. Сортировка по званию, фамилии и имени.*/
USE cd;
SELECT
    CONCAT(m.firstname, ' ', m.surname) AS member_name,
    ROUND(SUM(TIMESTAMPDIFF(HOUR, b.starttime, TIMESTAMPADD(HOUR, 1, b.starttime))), -1) AS rounded_hours,
    CASE
        WHEN mb.memid IS NOT NULL THEN 'member'
        ELSE 'guest'
    END AS status
FROM
    bookings b
LEFT JOIN
    members m ON b.memid = m.memid
LEFT JOIN
    members mb ON b.memid = mb.memid AND mb.memid!= 0
GROUP BY
    b.memid
ORDER BY
    status, rounded_hours, m.surname, m.firstname;