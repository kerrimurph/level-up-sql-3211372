-- Update information in the database.

-- Set Cleo Goldwater's favorite dish to
-- the Quinoa Salmon Salad.

SELECT * FROM Customers
WHERE LastName = 'Goldwater'

SELECT * FROM Dishes
WHERE Name = 'Quinoa Salmon Salad'
-- DishID = 9


--RESULT OPTIONS:
UPDATE Customers
SET FavoriteDish = 9
WHERE LastName = 'Goldwater'

--OR--

UPDATE Customers
SET FavoriteDish = (SELECT DishID FROM Dishes WHERE Name = 
'Quinoa Salmon Salad')
WHERE CustomerID = 42