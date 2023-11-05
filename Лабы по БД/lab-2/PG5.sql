/*выводим facility и строки с двойным условием membercost <= monthlymaintenance / 50 AND membercost !=0*/
USE cd;
SELECT facility FROM facilities WHERE membercost <= monthlymaintenance / 50 AND membercost !=0;