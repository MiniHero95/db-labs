/*Выберите список всех членов, включая человека, который их рекомендовал*/
 USE cd;
SELECT DISTINCT concat(mem.surname,' ',mem.firstname) AS membername,
concat(rec.surname,' ',rec.firstname) AS recname
FROM members mem, members rec 
WHERE mem.recommendedby=rec.memid
ORDER BY membername;