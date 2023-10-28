USE cd;
SELECT starttime FROM bookings
JOIN facilities ON facilities.facid=bookings.facid
WHERE bookings.starttime LIKE "%2012-09-14%" AND facilities.membercost>30 AND facilities.guestcost>30
