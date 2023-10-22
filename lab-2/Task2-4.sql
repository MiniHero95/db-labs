/*делаем выборку по объектам,задав условие membercost!=0*/
USE cd;
SELECT facility,membercost FROM facilities WHERE membercost!=0;