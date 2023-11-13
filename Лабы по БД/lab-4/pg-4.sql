-- Active: 1698134321747@@127.0.0.1@3306@cd
# Обновляем данные в таблице facilities для столбца initialoutlay чей facid =1 
USE cd;
UPDATE facilities
SET initialoutlay=10000
WHERE facid=1; 
