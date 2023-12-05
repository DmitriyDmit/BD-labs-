CREATE TABLE rentals (
    id SERIAL PRIMARY KEY,
    rent DECIMAL(10, 2) NOT NULL,
    payed_months INTEGER NOT NULL,
    total_months INTEGER NOT NULL
);
INSERT INTO rentals (rent, payed_months, total_months)
VALUES (1000, 6, 12);
