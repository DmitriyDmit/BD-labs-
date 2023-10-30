-- Active: 1698134321747@@127.0.0.1@3306@cd
/*выбираем объекты с максимальной(MAX) или минимальной(MIN) стоимостью*/
USE cd;
SELECT facility, initialoutlay FROM facilities WHERE initialoutlay = (SELECT min(initialoutlay) FROM facilities)
UNION
SELECT facility, initialoutlay FROM facilities WHERE initialoutlay = (SELECT max(initialoutlay) FROM facilities);