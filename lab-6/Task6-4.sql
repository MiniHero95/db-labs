/*Выведите список членов клуба, отформатированных как 'Surname, Firstname'*/
USE cd;
SELECT CONCAT(surname, ', ', firstname) AS 'full name' FROM members
WHERE memid != 0;