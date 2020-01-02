--Use the WHERE Clause To Filter Exact Delivery Date--
SELECT *
FROM [Purchasing].[PurchaseOrders]
WHERE ExpectedDeliveryDate = '2013-01-15';

--Use the ORDER BY Clause to order by SupplierID Descending--
SELECT *
FROM [Purchasing].[PurchaseOrders]
WHERE ExpectedDeliveryDate = '2013-01-15'
ORDER BY SupplierID DESC;

--Count The Number of Rows In the Table--
SELECT COUNT(*) AS Rows
FROM [Purchasing].[PurchaseOrders];

--Count of Orders on Christmas day--
SELECT COUNT(OrderDate) AS Orders_On_Christmas_2013
FROM [Purchasing].[PurchaseOrders]
WHERE OrderDate = '2013-12-25';

--Filtered to get all of the orderdates in 2013--
SELECT *
FROM [Purchasing].[PurchaseOrders]
WHERE OrderDate LIKE '2013%';

--Get Distinct DeliveryMethodID From the Purchase order table--
SELECT DISTINCT DeliveryMethodID
FROM [Purchasing].[PurchaseOrders];

--See All The Different Delivery Methods--
SELECT *
FROM [Application].[DeliveryMethods];

--Count of PostDelivery deliverys--
SELECT COUNT(SupplierID) AS PostDelivery 
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 1;

--Count of Courier deliverys--
SELECT COUNT(SupplierID) AS Courier
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 2;

--Count of DeliveryVan deliverys--
SELECT COUNT(SupplierID) AS DeliveryVan
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 3;

--Count of CustomerCollect deliverys--
SELECT COUNT(SupplierID) AS CustomerCollect
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 4;

--Count of ChilledVan deliverys--
SELECT COUNT(SupplierID) AS ChilledVan
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 5;

--Count of Customer Courier to Collect delivery--
SELECT COUNT(SupplierID) AS Customer_Courier_to_collect
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 6;

--Count of Road Freight--
SELECT COUNT(SupplierID) AS Road_Freight
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 7;

--Count of Air Freight delivery--
SELECT COUNT(SupplierID) AS Air_Freight
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 8;

--Count of Refrigerated Road Freight--
SELECT COUNT(SupplierID) AS Refrigerated_Road_Freight
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 9;

--Count of Refrigerated Air Freight--
SELECT COUNT(SupplierID) AS Refrigerated_Air_Freight
FROM [Purchasing].[PurchaseOrders]
WHERE DeliveryMethodID = 10;

--Get both top delivery methods using the or operator--
SELECT *
FROM [Purchasing].[PurchaseOrders]
WHERE (DeliveryMethodID = 7)OR DeliveryMethodID = 2;


--Example of An Inner Join that only bring same content on both tables , I inner joined the following tables--
SELECT Purchasing.PurchaseOrders.DeliveryMethodID,Application.DeliveryMethods.DeliveryMethodID
FROM Purchasing.PurchaseOrders
INNER JOIN [Application].[DeliveryMethods]
ON Purchasing.PurchaseOrders.DeliveryMethodID = Application.DeliveryMethods.DeliveryMethodID;

