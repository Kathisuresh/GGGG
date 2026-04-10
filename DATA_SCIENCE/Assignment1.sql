use ASSIGNMENTS;
select * from Swiggy;


--1 Display the unique vegetable items offered by Swiggy in Kokapet
select  distinct Item from Swiggy where Item_Type='Veg' and  Location='kokapet';


-- 2 How many items were ordered in the year 2020 using PhonePay?
select sum(Quantity) from Swiggy where Year(date)= 2020 and Payment_Type='Phone Pay';


--3 Extract the total number of non-vegetarian orders received by Adhya Grand at each location
select Location, sum(Quantity) from Swiggy where Restaurant='Adhya Grand' and Item_Type='Non Veg' Group by Location;


-- 4 Display the Restaurants which received atleast one Non Veg Order in 2024
select Distinct Restaurant from Swiggy where Item_Type='Non Veg' and Quantity>=1 and  Year(date)='2024';


-- 5 Display the OrderID and the Item for all the orders from Madhapur with rating less than 2
select OID,Item from Swiggy where Location='Madhapur' and Rating<2;


-- 6 Extract the customers who have used more than two payment methods
select CustomerID,count(Payment_Type) as 'No_of_Payment_Methods_used' from Swiggy Group by CustomerID Having count(Payment_Type)>2;


-- 7 Fetch the customers who placed at least one order of quantity greater than 5 in 2023
select CustomerID from Swiggy where Quantity>5 and Year(date)='2023';


-- 8 Extract average rating for non-vegetarian items for each location
select Location, avg(Rating) from Swiggy  where Item_Type='Non Veg' group by Location;


-- 9 Display the total amount generated in each payment Method in 2022
select Payment_Type,sum(Total_Cost) from Swiggy where Year(date)='2022' Group by(Payment_Type);


-- 10 Extract customers who placed orders for at least three different items in Narsingi
select CustomerID ,count(Distinct Item) from Swiggy where Location='Narsingi'  group by CustomerID having count(Distinct Item)>=3;
