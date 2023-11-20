/*Создайте монотонно увеличивающийся нумерованный список участников (включая гостей), упорядоченный по дате присоединения.*/
USE cd;
SELECT ROW_NUMBER() OVER (ORDER BY joindate) AS ParticipantNumber,
       memid,
       firstname,
       surname
FROM members
ORDER BY ParticipantNumber;