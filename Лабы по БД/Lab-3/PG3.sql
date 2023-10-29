-- Active: 1698134321747@@127.0.0.1@3306@cd
USE cd;
SELECT surname FROM members
JOIN members ON surname.memind = recommendedby.memind
