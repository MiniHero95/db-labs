/*делаем выборку по самому дорогому(MAX) и самому дешевому(MIN) объектам*/
USE cd;
/*самый дешевый*/
SELECT facility, initialoutlay FROM facilities WHERE initialoutlay = (SELECT MIN(initialoutlay) FROM facilities)
UNION 
/*самый дорогой*/
SELECT facility, initialoutlay FROM facilities WHERE initialoutlay = (SELECT MAX(initialoutlay) FROM facilities);
