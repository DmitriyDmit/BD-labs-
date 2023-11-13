-- Active: 1698134321747@@127.0.0.1@3306@cd
# Обновляем значения membercost и guestcost для 0 и 1 объекта 
USE cd;
UPDATE facilities
SET membercost=6,guestcost=30
WHERE facid<2; 
SELECT*FROM facilities;