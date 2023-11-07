-- Добавляем 2 строки в facilities и также выводим таблицу для проверки изменений
USE cd;
INSERT INTO facilities (facility, membercost, guestcost, initialoutlay, monthlymaintenance)
VALUES ('Squash Court 2', 3.5, 17.5, 5000, 80),
       ('Squash Court 3', 3.5, 17.5, 5000, 80);
SELECT * FROM facilities;

AFTER TABLE facilities
MODIFY membercost
DECIMAL(10,2);
AFTER TABLE facilities
MODIFY  guestcost
DECIMAL(10,2);
DELETE facilities 
WHERE facid IN(10,11)