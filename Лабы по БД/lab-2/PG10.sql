/*делаем сортировку по 10 фамилиям(ограничивая количество с помощью LIMIT) упорядочниваем их по алфавиту(ORDER BY) без повторов(DISTINCT)*/
USE cd;
SELECT DISTINCT surname FROM members ORDER BY surname LIMIT 10;