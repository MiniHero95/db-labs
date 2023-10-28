USE cd;
SELECT facility FROM facilities 
JOIN bookings ON facilities.facid=bookings.facid
WHERE facilities.facility LIKE "%Tennis Court%" and bookings.starttime LIKE "%2012-09-12%";