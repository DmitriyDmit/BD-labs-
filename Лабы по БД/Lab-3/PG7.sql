-- Active: 1698134321747@@127.0.0.1@3306@cd
-- Выбираем список членов клуба, включая рекомендованных людей, без объединений и дубликатов. Сортируем по ФИО
 USE cd;
SELECT DISTINCT concat(mem.surname,' ',mem.firstname) AS membername,
concat(rec.surname,' ',rec.firstname) AS recname
FROM members mem, (SELECT memid, recommendedby, surname, firstname FROM members) rec 
WHERE mem.recommendedby=rec.memid;