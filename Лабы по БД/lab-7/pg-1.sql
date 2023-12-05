USE cd;
DELIMITER //
CREATE FUNCTION sum_arends ( facid INT, memid INT, slots INT)
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE Стоимость_аренды INT;
    SET Стоимость_аренды = (SELECT IF(memid = 0, guestcost, membercost) * slots FROM facilities WHERE facid = facid);
    RETURN Стоимость_аренды; 
END //
DELIMITER ;
SELECT facid, memid, slots, sum_arends(facid, memid, slots) AS Стоимость_аренды FROM bookings;