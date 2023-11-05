-- Active: 1698134321747@@127.0.0.1@3306@cd
-- Выбираем список членов клуба, включая рекомендованных людей, без объединений и дубликатов. Сортируем по ФИО
USE cd;
WITH new AS (
    SELECT CONCAT(m1.surname, " ", m1.firstname) AS fiomember 
    FROM members m1, members m2
    WHERE m1.recommendedby = m2.memid OR m1.recommendedby IS NULL
)
SELECT DISTINCT fiomember FROM new
WHERE fiomember NOT LIKE "%GUEST%" ORDER BY fiomember;