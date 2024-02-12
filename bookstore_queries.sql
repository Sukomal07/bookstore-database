SELECT B.Title, B.ISBN, SUM(OD.Quantity) AS TotalSold
FROM Books B
JOIN OrderDetails OD ON B.BookID = OD.BookID
JOIN Orders O ON OD.OrderID = O.OrderID
GROUP BY B.BookID
ORDER BY TotalSold DESC
LIMIT 10;

-- This query calculates the total sales revenue between '2023-01-01' and '2023-12-31'
SELECT SUM(TotalAmount) AS TotalRevenue
FROM Orders
WHERE OrderDate BETWEEN '2023-01-01' AND '2023-12-31';
