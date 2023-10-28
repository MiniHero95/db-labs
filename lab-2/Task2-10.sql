/*делаем выборку по 10 фамилиям упорядочниваем их по алфавиту(ORDER BY) без повторов(DISTINCT)*/
USE cd;
SELECT DISTINCT surname FROM members WHERE memid>0 AND memid<12 ORDER BY surname;