/*делаем выборку по 10 фамилиям по алфавиту(ORDER BY) без повторов(DISTINCT)*/
USE cd;
SELECT DISTINCT surname FROM members ORDER BY surname LIMIT 10;