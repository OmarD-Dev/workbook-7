use northwind;
-- Question 1
Select ProductName from products
Where UnitPrice=(Select max(UnitPrice)from products);
-- Question 2
Select OrderID, ShipName, ShipAddress from Orders
Where ShipVia in (Select ShipperID from Shippers Where CompanyName = "Federal Shipping") ;
-- Question 3
-- Select OrderID from Orders;
SELECT 
    OrderID
FROM
    Orders
WHERE
    OrderID in (SELECT 
            OrderID
        FROM
            `Order Details`
        WHERE
            ProductID in (SELECT 
                    ProductID
                FROM
                    Products
                WHERE
                    ProductName = 'Sasquatch Ale'))