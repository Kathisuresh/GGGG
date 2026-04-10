use ASSIGNMENTS
select * from Bookmyshow

--1.List all concerts booked via mobile app 
select * from Bookmyshow where event_type='Concert' and platform='Mobile App';

--2.Show bookings in Hyderabad whose event date is after July 1, 2025. 
select booking_id from Bookmyshow where city='Hyderabad' and event_date >'01-07-2025';

--3.Find total revenue per city.
select city,sum(total_ticket_price) from Bookmyshow group by city;


--4.Count of events by event type. 
select event_type, count(event_type) from Bookmyshow group by event_type;


--5.How many times did each user booked ticket from Bookmyshow.
select user_id, sum(ticket_count) from Bookmyshow group by user_id;


--6.extract the Cities where total more than 5 events took place
select city,count(distinct event_type) from Bookmyshow group by city having count(event_type)>5;

--7.Extract the event types with avg price > ₹500. 
select distinct event_type from Bookmyshow group by event_type having avg(ticket_price)>500;


--8.Find total tickets sold per event_type.
select event_type,sum(ticket_count) from Bookmyshow group by(event_type);


