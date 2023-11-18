-- Active: 1698134321747@@127.0.0.1@3306@cd
# Выводим, а затем удаляем членов клуба, которые не арендовали объекты клуба
USE cd;
# Выводим всех членов клуба, кто не арендовал объекты клуба
SELECT * FROM members
WHERE memid NOT  IN (SELECT memid FROM bookings);
# Удаляем всех членов клуба, кто не арендовал объекты клуба
DELETE FROM members
WHERE memid NOT IN (SELECT memid FROM bookings);
#Проверяем есть ли член клуба с memid = 37 
SELECT * FROM members WHERE memid = 37;