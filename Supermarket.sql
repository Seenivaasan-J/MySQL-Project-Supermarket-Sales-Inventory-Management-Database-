-- DATABASE CREATION--
create database Supermarket;
use Supermarket;

-- CUSTOMERS TABLE CREATION--
create table Customers(
Customer_id int primary key,
First_Name varchar (500),
Last_Name varchar (50),
Email varchar (50),
Phone varchar (50),
Address varchar (50),
city varchar (50),
country varchar (50));

-- CATEGORY TABLE CREATION--
create table Category(
Category_id int primary key,
Category_Name varchar (50),
Description varchar (50));

-- PRODUCT TABLE CREATION--
create table Product(
Product_id int primary key,
Product_Name varchar (50) ,
Category_id int,
Price decimal (20,2), 
QuantityInStock int,
Supplier_id int,
constraint foreign key (Category_id) references Category (Category_id));

-- ORDERS TABLE CREATION--
create table Orders (
Orders_id int primary key,
Customer_id int,
Product_id int,
OrdersDate date,
TotalAmount decimal (20,2),
OrdersStatus varchar(50),
PaymentStatus varchar (50),
constraint foreign key (Product_id) references Product (Product_id),
constraint foreign key (Customer_id) references Customers (Customer_id));

-- ORDERDETAIL TABLE CREATION--
create table Order_Details(
OrderItem_id int primary key,
Orders_id int,
Product_id int,
Quantity int,
PriceAtTimeOfPurchase decimal (20,2),
constraint foreign key (Orders_id) references Orders (Orders_id));

-- VALUE INSERTION IN CUSTOMERS TABLE --
insert into Customers values
(1, 'Laura', 'Harris', 'laura.harris1@example.com', '+1-555-0001', '2041 Garcia St', 'Los Angeles', 'Australia'),
(2, 'Laura', 'Brown', 'laura.brown2@example.com', '+1-555-0002', '9234 Davis St', 'New York', 'Germany'),
(3, 'Sarah', 'Williams', 'sarah.williams3@example.com', '+1-555-0003', '5609 Brown St', 'New York', 'Canada'),
(4, 'Olivia', 'Brown', 'olivia.brown4@example.com', '+1-555-0004', '846 Davis St', 'Chicago', 'Germany'),
(5, 'David', 'Jones', 'david.jones5@example.com', '+1-555-0005', '7880 Jones St', 'Phoenix', 'Canada'),
(6, 'Sarah', 'Davis', 'sarah.davis6@example.com', '+1-555-0006', '8079 Miller St', 'Houston', 'Canada'),
(7, 'Robert', 'Harris', 'robert.harris7@example.com', '+1-555-0007', '4403 Jones St', 'Los Angeles', 'Australia'),
(8, 'Laura', 'Miller', 'laura.miller8@example.com', '+1-555-0008', '374 Martinez St', 'Houston', 'USA'),
(9, 'James', 'Garcia', 'james.garcia9@example.com', '+1-555-0009', '101 Harris St', 'Chicago', 'USA'),
(10, 'James', 'Harris', 'james.harris10@example.com', '+1-555-0010', '5263 Williams St', 'Phoenix', 'USA'),
(11, 'Emily', 'Jones', 'emily.jones11@example.com', '+1-555-0011', '4238 Smith St', 'Chicago', 'Canada'),
(12, 'Emily', 'Johnson', 'emily.johnson12@example.com', '+1-555-0012', '605 Harris St', 'Los Angeles', 'Australia'),
(13, 'Laura', 'Williams', 'laura.williams13@example.com', '+1-555-0013', '7832 Jones St', 'Los Angeles', 'Germany'),
(14, 'Olivia', 'Johnson', 'olivia.johnson14@example.com', '+1-555-0014', '6780 Jones St', 'Phoenix', 'USA'),
(15, 'Jane', 'Martinez', 'jane.martinez15@example.com', '+1-555-0015', '8750 Martinez St', 'New York', 'Germany'),
(16, 'Jane', 'Brown', 'jane.brown16@example.com', '+1-555-0016', '3705 Garcia St', 'Los Angeles', 'Germany'),
(17, 'Robert', 'Jones', 'robert.jones17@example.com', '+1-555-0017', '1113 Miller St', 'Phoenix', 'Australia'),
(18, 'Michael', 'Johnson', 'michael.johnson18@example.com', '+1-555-0018', '2677 Jones St', 'Houston', 'Germany'),
(19, 'Robert', 'Johnson', 'robert.johnson19@example.com', '+1-555-0019', '8878 Williams St', 'Houston', 'Canada'),
(20, 'John', 'Martinez', 'john.martinez20@example.com', '+1-555-0020', '3686 Garcia St', 'Chicago', 'Australia');

-- VALUE INSERTION IN CATEGORY TABLE --
insert into Category values
(1, 'Books', 'Reading materials'),
(2, 'Gaming', 'Consoles & games'),
(3, 'Home & Kitchen', 'Appliances'),
(4, 'Electronics', 'Gadgets'),
(5, 'Fashion', 'Clothing & accessories');


-- VALUE INSERTION IN PRODUCT TABLE --
insert into Product values
(1, 'The Great Gatsby', 1, 451.97, 79, 2), 
(2, 'PlayStation 5', 2, 413.63, 92, 7),
(3, 'Instant Pot Duo', 3, 254.34, 9, 9), 
(4, 'Apple iPhone 14', 4, 196.76, 93, 8),
(5, 'Samsung Galaxy S23', 4, 285.14, 57, 9), 
(6, 'Nintendo Switch', 2, 158.22, 67, 6), 
(7, 'Sony WH-1000XM5 Headphones', 4, 217.3, 85, 4), 
(8, 'Atomic Habits', 1, 95.43, 86, 8), 
(9, 'Nespresso Coffee Machine', 3, 53.12, 27, 8), 
(10, 'Harry Potter Box Set', 1, 436.57, 97, 7), 
(11, '1984 by George Orwell', 1, 443.19, 76, 4),
(12, 'Nike Air Max 270', 5, 283.85, 40, 10), 
(13, 'MacBook Air M2', 4, 362.9, 26, 5), 
(14, 'Dyson V15 Vacuum Cleaner', 3, 368.69, 65, 4), 
(15, 'Logitech MX Master 3S', 4, 267.63, 17, 8),
(16, 'Adidas Ultraboost', 5, 472.08, 44, 1), 
(17, 'Razer BlackWidow Keyboard', 2, 491.21, 92, 9), 
(18, 'HyperX Cloud II Headset', 2, 273.93, 85, 1),
(19, 'Sony Bravia 65-inch TV', 4, 462.13, 88, 3), 
(20, 'Corsair Gaming Mouse', 2, 345.68, 7, 7); 


-- VALUE INSERTION IN ORDERS TABLE --
insert into Orders values
(1, 16, 7, '2025-02-03', 261.95, 'Shipped', 'Unpaid'),
(2, 5, 5, '2025-02-24', 971.52, 'Shipped', 'Refunded'),
(3, 17, 8, '2025-02-23', 988.68, 'Pending', 'Unpaid'),
(4, 11, 2, '2025-02-16', 193.19, 'Cancelled', 'Paid'),
(5, 13, 6, '2025-02-10', 275.12, 'Delivered', 'Refunded'),
(6, 20, 8, '2025-01-31', 839.06, 'Delivered', 'Paid'),
(7, 5, 5, '2025-02-03', 696.06, 'Shipped', 'Paid'),
(8, 9, 12, '2025-02-12', 498.18, 'Cancelled', 'Refunded'),
(9, 12, 8, '2025-02-22', 553.76, 'Cancelled', 'Unpaid'),
(10, 8, 6, '2025-01-28', 489.74, 'Cancelled', 'Paid'),
(11, 12, 1, '2025-02-08', 699.75, 'Shipped', 'Unpaid'),
(12, 1, 15, '2025-01-30', 416.86, 'Pending', 'Paid'),
(13, 13, 18, '2025-02-12', 78.6, 'Cancelled', 'Refunded'),
(14, 8, 13, '2025-02-01', 801.29, 'Cancelled', 'Refunded'),
(15, 3, 13, '2025-02-20', 57.28, 'Delivered', 'Unpaid'),
(16, 16, 4, '2025-02-03', 802.05, 'Shipped', 'Paid'),
(17, 10, 18, '2025-02-21', 354.87, 'Shipped', 'Refunded'),
(18, 10, 17, '2025-02-09', 732.0, 'Shipped', 'Paid'),
(19, 10, 20, '2025-02-02', 261.33, 'Delivered', 'Refunded'),
(20, 19, 2, '2025-02-14', 890.07, 'Cancelled', 'Refunded');

-- VALUE INSERTION IN ORDERITEM TABLE --
insert into Order_Details values
(1, 12, 14, 3, 496.6),
(2, 19, 17, 1, 459.18),
(3, 1, 8, 5, 145.39),
(4, 7, 3, 2, 27.53),
(5, 1, 12, 5, 325.27),
(6, 12, 12, 2, 383.07),
(7, 18, 1, 2, 140.99),
(8, 14, 14, 5, 494.7),
(9, 19, 13, 1, 79.91),
(10, 12, 8, 5, 261.26),
(11, 15, 19, 3, 162.4),
(12, 14, 20, 3, 130.71),
(13, 12, 4, 1, 250.92),
(14, 19, 4, 5, 238.92),
(15, 6, 7, 4, 276.71),
(16, 12, 17, 2, 34.92),
(17, 10, 2, 1, 393.32),
(18, 5, 3, 3, 36.43),
(19, 19, 15, 5, 289.28),
(20, 6, 5, 1, 418.28);

-- To Retrieve All The Tables --
select * from Customers;
select * from Category;
select * from Product;
select * from orders;
select * from order_Details;

select * from Product
where Category_id = 4;

-- Retrieve All Customers from a Specific Country--
select * from Customers 
where Country = 'Germany';

-- List All Products in a Specific Category --
select Product_id, Product_Name, Price, QuantityInStock from Product 
where Category_id in (select Category_id from Category where Category_Name = 'Electronics');

select product_name,Price,QuantityInStock from product
join category on  category.category_id = product.category_id
where category_Name = 'Electronics';

-- Find Total Orders for Each Customer --
select C.Customer_id, C.First_Name, C.Last_Name, count(O.Orders_id) as Total_Orders from Customers C
join Orders O on C.Customer_id = O.Customer_id
group by  C.Customer_id, C.First_Name, C.Last_Name
order by  Total_Orders desc;

-- Get All Shipped Orders--
select * from Orders 
where OrdersStatus = 'Shipped';

-- Identify Top-Selling Products --
select P.Product_Name, SUM(OD.Quantity) as Total_Sold from Order_Details OD
join Product P on OD.Product_id = P.Product_id
group by P.Product_Name
order by Total_Sold desc
limit 5;

--  Calculate Total Revenue Generated per Product --
select P.Product_Name, sum(OD.Quantity * OD.PriceAtTimeOfPurchase) as Total_Revenue from Order_Details OD
join  Product P on OD.Product_id = P.Product_id
group by  P.Product_Name
order by  Total_Revenue desc;

-- Retrieve Customers Who Have Not Placed Any Orders --
select C.Customer_id, C.First_Name, C.Last_Name
from Customers C
left join Orders O on C.Customer_id = O.Customer_id
where O.Orders_id is null;

-- List All Orders with Customer and Product Details --
select C.First_Name, C.Last_Name, P.Product_Name, O.Orders_id, O.TotalAmount, O.OrdersStatus
from Orders O
join customers C on O.Customer_id = C.Customer_id
join Product P on O.Product_id = P.Product_id
order by  O.OrdersDate desc;

-- Find Customers Who Ordered a Specific Product --
select distinct C.First_Name, C.Last_Name, C.Email from Customers C
join Orders O on C.Customer_id = O.Customer_id
join Product P on O.Product_id = P.Product_id
where P.Product_Name = 'PlayStation 5';

-- Find Orders with a Refund Status --
select * from Orders 
where PaymentStatus = 'Refunded';

-- Show Customers with a row number by Country (sorted by Last Name) --
SELECT Customer_id,First_Name,Last_Name,Country,
ROW_NUMBER() OVER (PARTITION BY Country ORDER BY Last_Name) AS RowNum
FROM Customers;

-- Rank Products by Price within each Category (allows gaps in ranking) --
SELECT Product_id,Product_Name,Category_id,Price,
RANK() OVER (PARTITION BY Category_id ORDER BY Price DESC) AS PriceRank
FROM Product;

-- Rank Orders by TotalAmount per Customer (no gaps in rank) --
SELECT Orders_id,Customer_id,TotalAmount,
DENSE_RANK() OVER (PARTITION BY Customer_id ORDER BY TotalAmount DESC) AS AmountRank
FROM Orders;

-- Using all three window functions together – Products by Category --
SELECT Product_id,Product_Name,Category_id,Price,
ROW_NUMBER() OVER (PARTITION BY Category_id ORDER BY Price DESC) AS RowNum,
RANK() OVER (PARTITION BY Category_id ORDER BY Price DESC) AS RankNum,
DENSE_RANK() OVER (PARTITION BY Category_id ORDER BY Price DESC) AS DenseRankNum
FROM Product;

-- Get the first order amount (based on date) for each customer --
SELECT Orders_id,Customer_id,OrdersDate,TotalAmount,
FIRST_VALUE(TotalAmount) OVER (PARTITION BY Customer_id ORDER BY OrdersDate) AS FirstOrderAmount
FROM Orders;

-- Get the last order amount (based on date) for each customer --
SELECT Orders_id,Customer_id,OrdersDate,TotalAmount,
LAST_VALUE(TotalAmount) OVER (PARTITION BY Customer_id ORDER BY OrdersDate
ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING) AS LastOrderAmount
FROM Orders;

-- Get the next order amount for each customer --
SELECT Orders_id,Customer_id,OrdersDate,TotalAmount,
LEAD(TotalAmount) OVER (PARTITION BY Customer_id ORDER BY OrdersDate) AS NextOrderAmount
FROM Orders;

-- Get the previous order amount for each customer --
SELECT Orders_id,Customer_id,OrdersDate,TotalAmount,
LAG(TotalAmount) OVER (PARTITION BY Customer_id ORDER BY OrdersDate) AS PreviousOrderAmount
FROM Orders;

-- Compare current order to previous/next order for each customer --
SELECT Orders_id,Customer_id,OrdersDate,TotalAmount,
LAG(TotalAmount) OVER (PARTITION BY Customer_id ORDER BY OrdersDate) AS PreviousOrderAmount,
LEAD(TotalAmount) OVER (PARTITION BY Customer_id ORDER BY OrdersDate) AS NextOrderAmount
FROM Orders;

-- View to Get Top-Selling Products--
create view TopSellingProducts as
select p.Product_id, p.Product_Name, SUM(od.Quantity) as TotalQuantitySold
from Order_Details od
join Product p on od.Product_id = p.Product_id
group by  p.Product_id, p.Product_Name
order by  TotalQuantitySold desc;
select * from TopSellingProducts;

-- View to Get Highest Selling Product with Customer ID--
create view HighestSellingProductWithCustomer as
select o.Customer_id, p.Product_id, p.Product_Name, SUM(od.Quantity) as TotalQuantitySold
from Orders o
join Order_Details od on o.Orders_id = od.Orders_id
join Product p on od.Product_id = p.Product_id
group by  o.Customer_id, p.Product_id, p.Product_Name
order by  TotalQuantitySold desc;
select * from HighestSellingProductWithCustomer;

-- Stored Procedure to Get Customer Details by Country --
delimiter &&  
create procedure GetCustomersByCountry(in countryName varchar(50))  
begin  
select * from Customers where country = countryName;  
end &&  
delimiter ;
call GetCustomersByCountry('Germany');

-- Stored Procedure to Get Orders by Customer ID--
delimiter &&  
create procedure GetOrdersByCustomer(in cust_id int)  
begin  
    select * from Orders where Customer_id = cust_id;  
end &&  
delimiter ;
call GetOrdersByCustomer (5);

-- Stored Procedure to Insert a New Product--
delimiter &&  
create procedure InsertProduct( in p_id int,in p_name varchar(50),in cat_id int,in price decimal(20,2),in qty int,in supp_id int)
begin  
    insert into Product values (p_id, p_name, cat_id, price, qty, supp_id);  
end &&  
delimiter  ;
call InsertProduct(21, 'Dell XPS Laptop', 4, 999.99, 50, 6);

-- Stored Procedure to Get Order Details by Order ID--
delimiter &&  
create procedure GetOrderDetailsByOrderID(in order_id int)  
begin  
    select * from Order_Details where Orders_id = order_id;  
end &&  
delimiter ;
call GetOrderDetailsByOrderID(12);

-- Stored Procedure to Get Total Sales by Product--
delimiter &&  
create procedure GetTotalSalesByProduct(in prod_id int)  
begin  
    select p.Product_Name, SUM(od.Quantity * od.PriceAtTimeOfPurchase) as TotalSales  
    from Order_Details od  
    join Product p on od.Product_id = p.Product_id  
    where od.Product_id = prod_id  
    group by  p.Product_Name;  
end &&  
delimiter ;
call GetTotalSalesByProduct(2);

-- Stored Procedure to Update Order Status--
delimiter &&  
create procedure UpdateOrderStatus(in order_id int, in new_status varchar(50))  
begin  
    update Orders set OrdersStatus = new_status 
    where Orders_id = order_id;  
end &&  
delimiter ;
call UpdateOrderStatus(3, 'Delivered');

-- Stored Procedure to Delete an Order by Order ID --
delimiter &&  
create procedure DeleteOrder(in order_id int)  
begin  
    delete from Order_Details where Orders_id = order_id;  
    delete from Orders where Orders_id = order_id;  
end &&  
delimiter ;
call DeleteOrder(20);

-- Stored Procedure to Get the Most Ordered Products--
delimiter &&  
create procedure GetMostOrderedProducts()  
begin  
    select p.Product_Name, SUM(od.Quantity) as TotalOrdered  
    from Order_Details od  
    join Product p on od.Product_id = p.Product_id  
    group by p.Product_Name  
    order by TotalOrdered desc  
    limit 5;   
end &&  
delimiter ;
call GetMostOrderedProducts();

