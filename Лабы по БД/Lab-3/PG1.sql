-- Active: 1698134321747@@127.0.0.1@3306@cd
/* Выбераем лист (timestamp) покупки времени использования объектов членом клуба 'David Farrell'. */
USE cd;
SELECT starttime FROM bookings
JOIN members ON bookings.memid = members.memid
WHERE members.firstname ="David" and members.surname = "Farrell";