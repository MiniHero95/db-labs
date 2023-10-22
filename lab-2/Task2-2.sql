/*делаем выборку по наименовании (facility) и стоимости его использования
(membercost) для членов клуба в базе объектах (facilities) клуба.*/
USE cd;
SELECT membercost,facility FROM facilities;