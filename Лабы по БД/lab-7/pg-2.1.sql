USE cd;
CREATE TRIGGER prevent_paid_deletion
BEFORE DELETE ON bookings
FOR EACH ROW
BEGIN
  IF (OLD.payed = 1) THEN
    SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Нельзя удалить оплаченную запись!';
	END IF;
END 

CREATE TRIGGER insert_payment_record
AFTER UPDATE ON bookings
FOR EACH ROW
BEGIN
  IF NEW.payed != OLD.payed THEN
  CASE
		WHEN NEW.payed = 1 THEN
			INSERT INTO payments (bookid, payment) VALUES (NEW.bookid, CalculateRentalCost(NEW.memid, NEW.facid, NEW.slots));
		WHEN NEW.payed = 0 THEN
        DELETE FROM payments AS pay 
        WHERE pay.bookid =  NEW.bookid;
	END CASE;
   END IF;

DELIMITER ;

UPDATE bookings 
SET payed = 1
WHERE YEAR(starttime) = 2012 AND MONTH(starttime) = 7; 

SELECT SUM(payment) AS "Общая стоимость"
FROM payments;

SELECT SUM(CalculateRentalCost(memid, facid, slots)) AS "Общая стоимость"
FROM bookings book
WHERE MONTH(starttime) = 7 AND YEAR(starttime) = 2012;