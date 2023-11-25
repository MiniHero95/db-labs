/*Создайте список общего количества мест, забронированных на один объект в месяц в 2012 году. 
Включите выходные строки, содержащие итоговые суммы за все месяцы по каждому объекту а также итоговые суммы за все месяцы для всех объектов. 
Выходная таблица должна состоять из идентификатора объекта, месяца и слотов, отсортированных по идентификатору и месяцу.*/
USE cd;

SELECT
    /*Используется IFNULL для предотвращения NULL идентификаторов объектов.*/
    IFNULL(derived_table.facid, 'Total') as facid, 
    /*IFNULL обеспечивает замену NULL значений месяцев на 'Total'.*/
    IFNULL(derived_table.month, 'Total') as month,
     /*Суммируем количество забронированных слотов.*/
    SUM(derived_table.slots) AS 'Количество забронированных мест' -- Суммируем количество забронированных слотов.

FROM 
    (
        -- Подзапрос (derived_table): 
        SELECT 
            f.facid AS facid,
            MONTH(b.starttime) AS month,
            SUM(b.slots) as slots
        FROM
            facilities f
        INNER JOIN bookings b ON f.facid = b.facid
        WHERE
            YEAR(b.starttime) = 2012
        GROUP BY facid, month, slots
    ) AS derived_table

/*Группировка результатов по идентификатору объекта и месяцу с использованием WITH ROLLUP.*/
GROUP BY facid, month WITH ROLLUP;