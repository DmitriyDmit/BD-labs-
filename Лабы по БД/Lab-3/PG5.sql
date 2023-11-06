-- Active: 1698134321747@@127.0.0.1@3306@cd
-- Выбираем людей (ФИО), которые покупали корты 1 и 2
 USE cd;
SELECT DISTINCT surname,firstname FROM members 
JOIN bookings ON bookings.memid=members.memid
JOIN facilities ON bookings.facid=facilities.facid
WHERE facility LIKE "%Court 1%" OR facility LIKE "%Court 2%";