use northwind;
-- Question 1
SELECT 
    ProductID, ProductName, UnitPrice, Categories.CategoryName
FROM
    Products
        JOIN
    Categories ON Products.CategoryID = Categories.CategoryId;
    
-- Question 2
SELECT 
    ProductID, ProductName, UnitPrice, Suppliers.CompanyName
FROM
    Products
        JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
WHERE
    UnitPrice > 75
ORDER BY ProductName;
-- Question 3
SELECT 
    ProductID,
    ProductName,
    UnitPrice,
    Categories.CategoryName,
    Suppliers.CompanyName
FROM
    Products
        JOIN
    Categories ON Products.CategoryID = Categories.CategoryID
        JOIN
    Suppliers ON Products.SupplierID = Suppliers.SupplierID
ORDER BY ProductName;
-- Question 4
SELECT ProductName, UnitPrice, Categories.CategoryName
FROM Products
	JOIN
        (SELECT CategoryID, Max(UnitPrice)AS MaxUnitPrice
        FROM Products 
        GROUP BY CategoryID) As MaxPrices
        ON Products.CategoryID = MaxPrices.CategoryID
        AND Products.UnitPrice= MaxPrices.MaxUnitPrice
	JOIN
		Categories 
        ON Products.CategoryID = Categories.CategoryID;

-- Question 5
SELECT 
    OrderID, ShipName, ShipAddress, Shippers.CompanyName
FROM
    Orders
        JOIN
    Shippers ON Orders.ShipVia = Shippers.ShipperID
WHERE
    ShipCountry = 'Germany';
-- Question 6
SELECT 
    Orders.OrderID, OrderDate, ShipName, ShipAddress
FROM
    Orders
        JOIN
    `Order Details` ON Orders.OrderId = `Order Details`.OrderID
        JOIN
    Products ON `Order Details`.ProductID = Products.ProductID
WHERE
	ProductName= 'Sasquatch Ale'

   
    
