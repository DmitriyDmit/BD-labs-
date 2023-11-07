-- Active: 1698134321747@@127.0.0.1@3306@cd
USE cd;
INSERT INTO facilities(facid,facility,membercost,guestcost,initialoutlay,monthlymaintenance)
VALUES (max(facid) + 1,"spa",20,30,100000,800);
SELECT * FROM facilities;
