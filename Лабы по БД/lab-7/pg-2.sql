USE cd;
CREATE TABLE payments (
  payid INT PRIMARY KEY AUTO_INCREMENT,
  bookid INT,
  payment DECIMAL,
  FOREIGN KEY (bookid) REFERENCES bookings(bookid)
);

ALTER TABLE bookings ADD COLUMN payed TINYINT DEFAULT 0;