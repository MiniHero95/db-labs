/*делаем выборку по 10 фамилиям упорядочниваем их по алфавиту(ORDER BY) без повторов(DISTINCT)*/
USE cd;
SELECT DISTINCT surname FROM members WHERE surname != 'Guest' ORDER BY surname LIMIT 10;