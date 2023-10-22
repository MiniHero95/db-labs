/*стоимость месячного обслуживания(monthlymaintenance).
делаем выборку по объектам,задав условия membercost<= monthlymaintenance / 50  и membercost!=0*/
USE cd;
SELECT facility, membercost FROM facilities WHERE membercost<= monthlymaintenance / 50 AND membercost!=0;