-- Добавляем 2 строки в facilities и также выводим таблицу для проверки изменений
USE cd;
INSERT INTO facilities (facid, facility, membercost, guestcost, initialoutlay, monthlymaintenance)
VALUES (10, 'Squash Court 2', 3.5, 17.5, 5000, 80),
       (11, 'Squash Court 3', 3.5, 17.5, 5000, 80);
SELECT * FROM facilities;