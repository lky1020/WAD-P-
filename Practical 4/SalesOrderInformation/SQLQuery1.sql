/*SELECT O.OrderID, YEAR(O.OrderDate) AS Year
FROM Orders O JOIN Employees E 
ON (O.EmployeeID = E.EmployeeID)
WHERE O.EmployeeID = 3;*/

/*SELECT DISTINCT CONVERT(VARCHAR(15), OrderDate, 106) AS Year
FROM Orders */

/*SELECT OrderID, (CONVERT(VARCHAR(15), OrderDate, 106)) AS OrderDate 
FROM Orders 
WHERE (EmployeeID = 5) AND (YEAR(OrderDate) = 1998)*/

/*SELECT P.ProductName, OD.UnitPrice, OD.Quantity, OD.Discount
FROM Products P JOIN [Order Details] OD ON(P.ProductID = OD.ProductID)
WHERE OrderID = 10825;*/

/*SELECT E.EmployeeID, (E.LastName + ' ' + E.FirstName) AS Name, YEAR(O.OrderDate) AS Year
From Employees E JOIN Orders O ON(E.EmployeeID = O.EmployeeID)
WHERE E.EmployeeID = 5*/

/*SELECT SUM(OD.UnitPrice * OD.Quantity) AS GrandTotalSales
FROM [Order Details] OD JOIN [Orders] O  
ON(OD.OrderID = O.OrderID)
JOIN [Employees] E
ON(O.EmployeeID = E.EmployeeID) 
WHERE E.EmployeeID = '1' AND YEAR(O.OrderDate) = '1997'*/

/*SELECT * FROM Orders
WHERE EmployeeID = '1' AND YEAR(OrderDate) = '1998'*/

/*SELECT SUM(OD.UnitPrice * OD.Quantity) AS Sales
FROM [Order Details] OD JOIN [Orders] O  
ON(OD.OrderID = O.OrderID)
JOIN [Employees] E
ON(O.EmployeeID = E.EmployeeID) 
WHERE O.OrderID = '10277' AND YEAR(O.OrderDate) = '1996'*/

SELECT P.ProductName, OD.UnitPrice, OD.Quantity, OD.Discount, (OD.UnitPrice * OD.Quantity) AS Sales
FROM Products P JOIN [Order Details] OD ON(P.ProductID = OD.ProductID) 
WHERE OrderID = @OrderID 


