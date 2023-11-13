-- Active: 1698134321747@@127.0.0.1@3306@cd
# Выводим, а затем удаляем членов клуба, которые не арендовали объекты клуба
USE cd;
SELECT * FROM members NOT IN (SELECT DISTINCT memid FROM bookings);
DELETE * FROM members;
WHERE memid NOT IN (SELECT memid FROM bookings );
# Проверяем наличие пользователя с memid = 37
SELECT* FROM members WHERE memid =37;