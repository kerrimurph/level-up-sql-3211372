-- Create a reservation for a customer who may or may not
-- already be listed in our Customers table.

-- Use the following information:
-- Sam McAdams (smac@kinetecoinc.com), for 5 people
-- on August 12, 2022 at 6PM (18:00)

SELECT * FROM Customers
WHERE email = 'smac@kinetecoinc.com'

INSERT INTO Customers (FirstName,LastName,Email,Phone)
VALUES ('Sam','McAdams','smac@kinetecoinc.com','555-555-1212')

SELECT * FROM Reservations
WHERE CustomerId = 102

INSERT INTO Reservations (CustomerId,Date,PartySize)
VALUES (102,'2022-08-12 18:00:00',5)

SELECT C.FirstName,C.LastName,C.Email,R.Date,R.PartySize,R.CustomerId
FROM Customers C
INNER JOIN Reservations R
ON C.CustomerID = R.CustomerId
WHERE R.CustomerId = 102

