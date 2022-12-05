-- Remove incorrect information from the database.

-- A customer named Norby has notified us he won't 
-- be able to keep his Friday reservation. 
-- Today is July 24, 2022.

-- SELECT statements to find the reservation:
SELECT * FROM Customers
WHERE FirstName = 'Norby'

SELECT * FROM Reservations
WHERE CustomerId = 64
AND DATE > '2022-07-24'

-- Consolidated SELECT statement to find the reservation:
SELECT c.firstname,r.customerid,r.date
FROM Customers c
INNER JOIN Reservations r
ON c.customerid = r.customerid
WHERE FirstName = 'Norby'
AND Date > '2022-01-01'

-- DELETE statement
DELETE FROM Reservations
WHERE ReservationId = 2000
