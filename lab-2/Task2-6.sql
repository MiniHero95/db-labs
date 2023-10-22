/*делаем выборку,чтобы объекты включали в себя слово "Tennis"("%Tennis%")*/
USE cd;
SELECT facid,facility FROM facilities WHERE facility like "%Tennis%"