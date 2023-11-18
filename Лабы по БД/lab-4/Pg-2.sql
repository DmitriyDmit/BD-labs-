-- Active: 1698134321747@@127.0.0.1@3306@cd
-- Добавляем 2 строки в facilities и также выводим таблицу для проверки изменений
USE cd;
INSERT INTO facilities (facid,facility, membercost, guestcost, initialoutlay, monthlymaintenance)
VALUES (10,'Squash Court 2', 3.5, 17.5, 5000, 80),
       (11,'Squash Court 3', 3.5, 17.5, 5000, 80);
SELECT * FROM facilities;

ALTER TABLE facilities
MODIFY membercost
DECIMAL(10,1);
ALTER TABLE facilities
MODIFY guestcost
DECIMAL(10,1);


DELETE FROM facilities 
WHERE facid IN(10,11)