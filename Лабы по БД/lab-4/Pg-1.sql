-- Active: 1698134321747@@127.0.0.1@3306@cd
-- Добавляем данные в столбцы таблицы facilities и выводим таблицу, для проверки изменений
USE cd;
INSERT INTO facilities(facid,facility,membercost,guestcost,initialoutlay,monthlymaintenance)
VALUES (9,"spa",20,30,100000,800);
SELECT * FROM facilities;