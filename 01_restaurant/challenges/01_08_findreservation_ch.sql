-- Find the reservation information for a customer whose
-- name we aren't quite sure how to spell.

-- Variations of the name include:
-- Stevensen, Stephensen, Stevenson, Stephenson, Stuyvesant

-- There are four people in the party. Today is June 14th.

SELECT *
FROM Reservations

SELECT * FROM Customers
WHERE LastName LIKE 'St%'


Select C.FirstName,C.LastName,C.Email,R.ReservationId,R.Date,R.PartySize
FROM Customers C
INNER JOIN Reservations R
ON C.CustomerId = R.CustomerId
WHERE R.PartySize = 4
AND C.LastName LIKE 'St%'
AND R.Date > '2022-06-14'