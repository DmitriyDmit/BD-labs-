/*выводим столбец facility и стороки для которых membercost не равен нулю*/
USE cd;
SELECT facility FROM facilities WHERE membercost != 0 ;