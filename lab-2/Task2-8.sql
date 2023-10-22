/*делаем выборку по качетсвенной стоимости*/
USE cd;
/*качетсвенная стоимость==дешевый*/
SELECT facility, "дешевый" AS "качественная стоимость" FROM facilities WHERE monthlymaintenance<100
UNION
/*качественная стоимость==дорогой*/
SELECT facility, "дорогой" AS "качественная стоимость" FROM facilities WHERE monthlymaintenance>=100;
