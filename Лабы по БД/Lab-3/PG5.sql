-- Active: 1698134321747@@127.0.0.1@3306@cd
USE cd;
SELECT DISTINCT surname, firstname FROM members
JOIN bookings ON bookings.memid=members.memid
JOIN facilities ON bookings.facid = facilities.facid
WHERE facility LIKE "%Tennis court%" and firstname not LIKE "GUEST"