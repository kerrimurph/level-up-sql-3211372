-- Enter a customer's delivery order into our database, 
-- and provide the total cost of the items ordered.

-- Use this order information:
-- Customer: Loretta Hundey, at 6939 Elka Place
-- Items: 1 House Salad, 1 Mini Cheeseburgers, and
-- 1 Tropical Blue Smoothie
-- Delivery date and time: September 20, 2022 @ 2PM (14:00)
-- There are no taxes or other fees.

SELECT *
FROM Customers
WHERE LastName = 'Hundey'
-- CustomerId = 70

INSERT INTO Orders (CustomerId, OrderDate)
VALUES (70,'2022-09-20 14:00:00')

SELECT * FROM Orders
WHERE CustomerId = 70
ORDER BY OrderDate DESC;
-- OrderId = 1001

SELECT * FROM Dishes
SELECT * FROM OrdersDishes



INSERT INTO OrdersDishes (OrderID, DishID) VALUES 
          (1001, (SELECT DishID FROM Dishes WHERE Name = 'House Salad')),
          (1001, (SELECT DishId FROM Dishes WHERE Name = 'Mini Cheeseburgers')),
          (1001, (SELECT DishId FROM Dishes WHERE Name = 'Tropical Blue Smoothie'));

SELECT * FROM Dishes D
INNER JOIN OrdersDishes O
ON D.DishId = O.DishID
WHERE O.OrderId = 1001

SELECT SUM(Dishes.Price)
FROM Dishes
JOIN OrdersDishes ON Dishes.DishId = OrdersDishes.DishID
WHERE OrdersDishes.OrderId = 1001