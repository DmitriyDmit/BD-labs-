-- Active: 1698134321747@@127.0.0.1@3306@cd
# Увеличиваем значение membercost и guestcost на 10% для нулевого объекта
USE cd;
UPDATE facilities
SET membercost=membercost*1.1,guestcost=guestcost*1.1
WHERE facid=0; 
SELECT*FROM facilities;