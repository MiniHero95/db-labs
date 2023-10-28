USE cd;
SELECT starttime FROM bookings 
JOIN members ON bookings.memid=members.memid
WHERE members.firstname = "David" and members.surname="Farrell";