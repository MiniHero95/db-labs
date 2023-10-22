/*делаем выборку,чтобы выбрались объекты с facid=1 и facid=5*/
USE cd;
SELECT facid,facility FROM facilities WHERE facid IN(1,5);