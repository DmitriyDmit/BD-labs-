/*в этом задании проверяется содержит ли каждая из строк facility в себе слово Tennis*/
USE cd;
SELECT facility FROM facilities WHERE facility like "%Tennis%";