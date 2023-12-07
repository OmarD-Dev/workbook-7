use northwind;
-- Question 1
Select COUNT(CompanyName) from Suppliers;
-- Question 2
Select SUM(Salary)from Employees;
-- Question 3
Select MIN(UnitPrice) from Products;
-- Question 4
Select AVG(UnitPrice) from Products;
-- Question 5
Select MAX(UnitPrice) from Products;
-- Question 6
Select SupplierID, Count(ProductName) from Products
Group by SupplierID;
-- Question 7
Select CategoryID, AVG(UnitPrice) from Products
Group by CategoryID;
-- Question 8
Select SupplierID, Count(ProductName) from Products
Group by SupplierID
Having Count(ProductName)>= 5;
-- Question 9 
Select ProductID,ProductName, UnitPrice * UnitsInStock AS InventoryValue from Products
Order by InventoryValue desc, ProductName;
