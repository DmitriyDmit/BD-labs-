-- Active: 1698134321747@@127.0.0.1@3306@cd
# Создаем транзакцию, где полностью удаляем значения из bookings, затем отменяем изменения с помощью ROLLBACK
USE cd;
START TRANSACTION;
DELETE FROM bookings;
SELECT*FROM bookings;
ROLLBACK;
SELECT*FROM bookings;
-- ВСЕХ  членов клуба которых не рекомендовали 