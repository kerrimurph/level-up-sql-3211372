-- Register a customer for our Anniversary event.

-- The customer 'atapley2j@kinetecoinc.com' will be in
-- attendance, and will bring 3 friends.

SELECT * FROM Customers
WHERE Email = 'atapley2j@kinetecoinc.com'

SELECT * FROM Reservations
WHERE CustomerId = 92

INSERT INTO AnniversaryAttendees 
  (CustomerId, NumberOfPeople)
VALUES (
  (SELECT CustomerID
    FROM Customers
    WHERE Email = 'atapley2j@kinetecoinc.com'),
  4);

SELECT * FROM AnniversaryAttendees