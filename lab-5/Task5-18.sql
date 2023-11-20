/*Для каждого дня августа 2012 года рассчитайте скользящее среднее общего дохода за предыдущие 15 дней. 
Вывод должен содержать столбцы даты и дохода, отсортированные по дате. 
Не забудьте учесть возможность того, что в день будет нулевой доход. */
USE cd;
SELECT
    DATE(b.starttime) AS date,
    AVG(f.membercost + f.guestcost) AS rolling_avg_income
FROM
    bookings b
JOIN
    facilities f ON b.facid = f.facid
WHERE
    DATE(b.starttime) BETWEEN '2012-08-01' AND '2012-08-31'
GROUP BY
    DATE(b.starttime)
ORDER BY
    DATE(b.starttime);