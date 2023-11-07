-- Active: 1698134321747@@127.0.0.1@3306@cd
USE cd;
UPDATE facilities
SET membercost=6,guestcost=30
WHERE facid<2; 
SELECT*FROM facilities;