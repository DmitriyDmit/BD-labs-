-- Active: 1698134321747@@127.0.0.1@3306@cd
# Создаем транзакцию,в которой удаляем члена клуба с memid =37, затем возвращаем его с помощью INSERT чтобы проверить код
USE cd;
START TRANSACTION;
DELETE *FROM members WHERE memid=37;
SELECT memid, surname, firstname FROM members;
ROLLBACK;
SELECT*FROM members

INSERT INTO members(memid,surname,firstname,address,zipcode,telephone,recommendedby,joindate)
VALUES(37,'Smith','Darren','3 Funktown, Denzington, Bosto',66796,'(822) 577-3541', NULL, '2012-09-26 18:08:45')