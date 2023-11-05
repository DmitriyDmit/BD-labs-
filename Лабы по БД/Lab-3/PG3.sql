-- Active: 1698134321747@@127.0.0.1@3306@cd
-- Выбираем членов клуба, которые зарекомендовали других членов клуба
USE cd;
SELECT m1.surname, m1.firstname FROM members m1, members m2 WHERE m1.memid=m2.recommendedby;