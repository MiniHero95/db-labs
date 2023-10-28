/*делаем выборку по самому дорогому(MAX) и самому дешевому(MIN) объектам*/
USE cd;
SELECT facility, initialoutlay FROM facilities WHERE initialoutlay = (SELECT MIN(initialoutlay) FROM facilities) OR initialoutlay = (SELECT MAX(initialoutlay) FROM facilities)

