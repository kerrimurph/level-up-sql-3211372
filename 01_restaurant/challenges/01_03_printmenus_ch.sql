-- Create reports that will be used to make three menus.

-- Create a report with all the items sorted by price (lowest to highest).

SELECT Type, Name, Description, Price
FROM Dishes
ORDER BY Price

-- Create a report showing appetizers and beverages.

SELECT Type, Name, Description, Price
FROM Dishes
WHERE Type = 'Beverage' OR Type = 'Appetizer'
ORDER BY Type

-- Create a report with all items except beverages.

SELECT Type, Name, Description, Price 
FROM Dishes
WHERE Type IS NOT 'Beverage'
ORDER BY Type