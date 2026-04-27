-- AIRLINES MANAGEMENT SYSTEM

DROP DATABASE IF EXISTS AirlinesDB;
CREATE DATABASE AirlinesDB;
USE AirlinesDB;

-- TABLE 1: AIRPORTS
--------------------------------------------------
CREATE TABLE Airports (
    airport_id INT PRIMARY KEY,
    airport_name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50)
);

-- TABLE 2: AIRCRAFT
--------------------------------------------------
CREATE TABLE Aircraft (
    aircraft_id INT PRIMARY KEY,
    model VARCHAR(50),
    capacity INT
);

-- TABLE 3: FLIGHTS
--------------------------------------------------
CREATE TABLE Flights (
    flight_id INT PRIMARY KEY,
    flight_number VARCHAR(10),
    source_airport INT,
    destination_airport INT,
    aircraft_id INT
);

-- TABLE 4: PASSENGERS
--------------------------------------------------
CREATE TABLE Passengers (
    passenger_id INT PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    gender VARCHAR(10),
    contact_number VARCHAR(15)
);

-- TABLE 5: BOOKINGS
--------------------------------------------------
CREATE TABLE Bookings (
    booking_id INT PRIMARY KEY,
    passenger_id INT,
    flight_id INT,
    booking_date DATE,
    seat_number VARCHAR(5)
);

INSERT INTO Airports VALUES
(1,'Indira Gandhi International Airport','Delhi','India'),
(2,'Chhatrapati Shivaji Maharaj Airport','Mumbai','India'),
(3,'Kempegowda International Airport','Bangalore','India'),
(4,'Chennai International Airport','Chennai','India'),
(5,'Netaji Subhash Chandra Bose Airport','Kolkata','India'),
(6,'Jaipur International Airport','Jaipur','India'),
(7,'Pune International Airport','Pune','India'),
(8,'Cochin International Airport','Kochi','India'),
(9,'Trivandrum International Airport','Trivandrum','India'),
(10,'Goa International Airport','Goa','India'),
(11,'Lucknow Airport','Lucknow','India'),
(12,'Patna Airport','Patna','India'),
(13,'Bhopal Airport','Bhopal','India'),
(14,'Indore Airport','Indore','India'),
(15,'Raipur Airport','Raipur','India'),
(16,'Ranchi Airport','Ranchi','India'),
(17,'Dehradun Airport','Dehradun','India'),
(18,'Amritsar Airport','Amritsar','India'),
(19,'Ludhiana Airport','Ludhiana','India'),
(20,'Jammu Airport','Jammu','India'),
(21,'Srinagar Airport','Srinagar','India'),
(22,'Agra Airport','Agra','India'),
(23,'Kanpur Airport','Kanpur','India'),
(24,'Guwahati Airport','Guwahati','India'),
(25,'Imphal Airport','Imphal','India'),
(26,'Aizawl Airport','Aizawl','India'),
(27,'Dimapur Airport','Dimapur','India'),
(28,'Shillong Airport','Shillong','India'),
(29,'Silchar Airport','Silchar','India'),
(30,'Tezpur Airport','Tezpur','India'),
(31,'Jodhpur Airport','Jodhpur','India'),
(32,'Udaipur Airport','Udaipur','India'),
(33,'Ajmer Airport','Ajmer','India'),
(34,'Kota Airport','Kota','India'),
(35,'Bhuj Airport','Bhuj','India'),
(36,'Jamnagar Airport','Jamnagar','India'),
(37,'Porbandar Airport','Porbandar','India'),
(38,'Rajkot Airport','Rajkot','India'),
(39,'Surat Airport','Surat','India'),
(40,'Vadodara Airport','Vadodara','India'),
(41,'Aurangabad Airport','Aurangabad','India'),
(42,'Nashik Airport','Nashik','India'),
(43,'Kolhapur Airport','Kolhapur','India'),
(44,'Solapur Airport','Solapur','India'),
(45,'Akola Airport','Akola','India'),
(46,'Nagpur Airport','Nagpur','India'),
(47,'Gondia Airport','Gondia','India'),
(48,'Yavatmal Airport','Yavatmal','India'),
(49,'Chandrapur Airport','Chandrapur','India'),
(50,'Wardha Airport','Wardha','India'),
(51,'Ahmedabad Airport','Ahmedabad','India'),
(52,'Noida Airport','Noida','India'),
(53,'Meerut Airport','Meerut','India'),
(54,'Bareilly Airport','Bareilly','India'),
(55,'Aligarh Airport','Aligarh','India');

INSERT INTO Aircraft VALUES
(101,'Airbus A320',180),
(102,'Boeing 737',160),
(103,'Airbus A321',220),
(104,'Boeing 777',300),
(105,'ATR 72',70),
(106,'Airbus A319',140),
(107,'Boeing 787',250),
(108,'Airbus A330',270),
(109,'Boeing 767',230),
(110,'Airbus A350',300),
(111,'Bombardier Q400',78),
(112,'Embraer 190',100),
(113,'Embraer 175',88),
(114,'Boeing 747',410),
(115,'CRJ 700',66),
(116,'CRJ 900',76),
(117,'ATR 42',48),
(118,'ATR 72-600',72),
(119,'Boeing 737 MAX',178),
(120,'Airbus A220',130),
(121,'A320 Neo',186),
(122,'A321 Neo',220),
(123,'Boeing 777X',350),
(124,'Boeing 737-900',180),
(125,'A330 Neo',280),
(126,'A340',290),
(127,'Boeing 717',110),
(128,'MD-11',285),
(129,'DC-10',250),
(130,'IL-76',190),
(131,'TU-204',210),
(132,'SSJ 100',98),
(133,'Comac C919',158),
(134,'Comac ARJ21',90),
(135,'A380',525),
(136,'Boeing 737-700',140),
(137,'Boeing 737-800',160),
(138,'A318',120),
(139,'A319 Neo',150),
(140,'Boeing 757',200),
(141,'Dash 8',50),
(142,'Let 410',19),
(143,'Do-228',19),
(144,'Boeing 787-9',290),
(145,'Boeing 787-10',330),
(146,'A350-900',315),
(147,'A350-1000',350),
(148,'MC-21',180),
(149,'An-148',75),
(150,'Yak-42',120);

INSERT INTO Flights VALUES
(201,'AI101',1,2,101),
(202,'AI102',2,3,102),
(203,'AI103',3,4,103),
(204,'AI104',4,5,104),
(205,'AI105',5,1,105),
(206,'AI106',6,7,106),
(207,'AI107',7,8,107),
(208,'AI108',8,9,108),
(209,'AI109',9,10,109),
(210,'AI110',10,11,110),
(211,'AI111',11,12,111),
(212,'AI112',12,13,112),
(213,'AI113',13,14,113),
(214,'AI114',14,15,114),
(215,'AI115',15,16,115),
(216,'AI116',16,17,116),
(217,'AI117',17,18,117),
(218,'AI118',18,19,118),
(219,'AI119',19,20,119),
(220,'AI120',20,21,120),
(221,'AI121',21,22,121),
(222,'AI122',22,23,122),
(223,'AI123',23,24,123),
(224,'AI124',24,25,124),
(225,'AI125',25,26,125),
(226,'AI126',26,27,126),
(227,'AI127',27,28,127),
(228,'AI128',28,29,128),
(229,'AI129',29,30,129),
(230,'AI130',30,31,130),
(231,'AI131',31,32,131),
(232,'AI132',32,33,132),
(233,'AI133',33,34,133),
(234,'AI134',34,35,134),
(235,'AI135',35,36,135),
(236,'AI136',36,37,136),
(237,'AI137',37,38,137),
(238,'AI138',38,39,138),
(239,'AI139',39,40,139),
(240,'AI140',40,41,140),
(241,'AI141',41,42,141),
(242,'AI142',42,43,142),
(243,'AI143',43,44,143),
(244,'AI144',44,45,144),
(245,'AI145',45,46,145),
(246,'AI146',46,47,146),
(247,'AI147',47,48,147),
(248,'AI148',48,49,148),
(249,'AI149',49,50,149),
(250,'AI150',50,51,150);

INSERT INTO Passengers VALUES
(301,'Rahul Sharma',28,'Male','9876543210'),
(302,'Anita Verma',34,'Female','9876501234'),
(303,'Amit Singh',45,'Male','9812345678'),
(304,'Neha Gupta',26,'Female','9823456789'),
(305,'Rohan Mehta',39,'Male','9898989898'),
(306,'Suresh Kumar',29,'Male','9000000001'),
(307,'Pooja Nair',31,'Female','9000000002'),
(308,'Vikas Jain',41,'Male','9000000003'),
(309,'Ritu Malhotra',27,'Female','9000000004'),
(310,'Anil Patil',36,'Male','9000000005'),
(311,'Sunita Rao',44,'Female','9000000006'),
(312,'Deepak Yadav',33,'Male','9000000007'),
(313,'Kavita Singh',38,'Female','9000000008'),
(314,'Nitin Shah',26,'Male','9000000009'),
(315,'Meena Iyer',48,'Female','9000000010'),
(316,'Aakash Verma',24,'Male','9000000011'),
(317,'Shalini Gupta',35,'Female','9000000012'),
(318,'Rohit Bansal',42,'Male','9000000013'),
(319,'Neetu Arora',29,'Female','9000000014'),
(320,'Kunal Mishra',37,'Male','9000000015'),
(321,'Anjali Kapoor',32,'Female','9000000016'),
(322,'Prakash Mehta',51,'Male','9000000017'),
(323,'Isha Joshi',23,'Female','9000000018'),
(324,'Varun Saxena',39,'Male','9000000019'),
(325,'Sneha Kulkarni',28,'Female','9000000020'),
(326,'Harish Pandey',46,'Male','9000000021'),
(327,'Monika Chawla',34,'Female','9000000022'),
(328,'Tarun Khanna',31,'Male','9000000023'),
(329,'Preeti Sood',40,'Female','9000000024'),
(330,'Sanjay Reddy',52,'Male','9000000025'),
(331,'Lakshmi Menon',45,'Female','9000000026'),
(332,'Ajay Shetty',27,'Male','9000000027'),
(333,'Pallavi Deshmukh',33,'Female','9000000028'),
(334,'Manish Tiwari',38,'Male','9000000029'),
(335,'Rekha Agarwal',47,'Female','9000000030'),
(336,'Abhishek Roy',25,'Male','9000000031'),
(337,'Nandini Bose',36,'Female','9000000032'),
(338,'Vivek Chandra',49,'Male','9000000033'),
(339,'Swati Mukherjee',28,'Female','9000000034'),
(340,'Ramesh Pillai',54,'Male','9000000035'),
(341,'Divya Nambiar',30,'Female','9000000036'),
(342,'Siddharth Kulkarni',35,'Male','9000000037'),
(343,'Bhavana Iyer',41,'Female','9000000038'),
(344,'Mohit Ahuja',26,'Male','9000000039'),
(345,'Neelam Saxena',43,'Female','9000000040'),
(346,'Rajiv Malhotra',50,'Male','9000000041'),
(347,'Aditi Sengupta',22,'Female','9000000042'),
(348,'Pankaj Tripathi',39,'Male','9000000043'),
(349,'Rashmi Verma',34,'Female','9000000044'),
(350,'Kishore Naik',47,'Male','9000000045'),
(351,'Smita Kulkarni',29,'Female','9000000046'),
(352,'Yogesh Pawar',44,'Male','9000000047'),
(353,'Nisha Bhat',31,'Female','9000000048'),
(354,'Suresh Nanda',56,'Male','9000000049'),
(355,'Rina Kothari',37,'Female','9000000050');

INSERT INTO Bookings VALUES
(401,301,201,'2025-01-05','12A'),
(402,302,202,'2025-01-06','14B'),
(403,303,203,'2025-01-07','10C'),
(404,304,204,'2025-01-08','18D'),
(405,305,205,'2025-01-09','5A'),
(406,306,206,'2025-02-01','6A'),
(407,307,207,'2025-02-02','7B'),
(408,308,208,'2025-02-03','8C'),
(409,309,209,'2025-02-04','9D'),
(410,310,210,'2025-02-05','10A'),
(411,311,211,'2025-02-06','11B'),
(412,312,212,'2025-02-07','12C'),
(413,313,213,'2025-02-08','13D'),
(414,314,214,'2025-02-09','14A'),
(415,315,215,'2025-02-10','15B'),
(416,316,216,'2025-02-11','16C'),
(417,317,217,'2025-02-12','17D'),
(418,318,218,'2025-02-13','18A'),
(419,319,219,'2025-02-14','19B'),
(420,320,220,'2025-02-15','20C'),
(421,321,221,'2025-02-16','21D'),
(422,322,222,'2025-02-17','22A'),
(423,323,223,'2025-02-18','23B'),
(424,324,224,'2025-02-19','24C'),
(425,325,225,'2025-02-20','25D'),
(426,326,226,'2025-02-21','26A'),
(427,327,227,'2025-02-22','27B'),
(428,328,228,'2025-02-23','28C'),
(429,329,229,'2025-02-24','29D'),
(430,330,230,'2025-02-25','30A'),
(431,331,231,'2025-02-26','31B'),
(432,332,232,'2025-02-27','32C'),
(433,333,233,'2025-02-28','33D'),
(434,334,234,'2025-03-01','34A'),
(435,335,235,'2025-03-02','35B'),
(436,336,236,'2025-03-03','36C'),
(437,337,237,'2025-03-04','37D'),
(438,338,238,'2025-03-05','38A'),
(439,339,239,'2025-03-06','39B'),
(440,340,240,'2025-03-07','40C'),
(441,341,241,'2025-03-08','41D'),
(442,342,242,'2025-03-09','42A'),
(443,343,243,'2025-03-10','43B'),
(444,344,244,'2025-03-11','44C'),
(445,345,245,'2025-03-12','45D'),
(446,346,246,'2025-03-13','46A'),
(447,347,247,'2025-03-14','47B'),
(448,348,248,'2025-03-15','48C'),
(449,349,249,'2025-03-16','49D'),
(450,350,250,'2025-03-17','50A');

select *from Airports;
select *from Aircraft;
select *from Flights;
select *from Passengers;
select *from Bookings;

-- SQL Project 
  
-- Project Title : AIRLINES MANAGEMENT SYSTEM 

-- 1. Display passengers who booked more than one flight. 

-- using join

select p.passenger_id, p.name,count(b.flight_id) as total_flight from passengers p
join bookings b
on p.passenger_id = b.passenger_id
group by p.passenger_id, p.name
having count(b.flight_id) > 1;

-- without join

select name
from Passengers
where passenger_id IN (
    select passenger_id
    from Bookings
    group by passenger_id
    having COUNT(flight_id) > 1
);

-- 2. Display aircraft with capacity greater than average. 

select * from aircraft
where capacity > (select avg(capacity) from aircraft);


-- 3. Display all records from the Flights table. 

select * from flights;


-- 4. Count total number of passengers. 

select count(*) as totalnumber from passengers;


-- 5. Display airports never used as destination. 

select a.airport_id, airport_name, a.city, a.country, f.destination_airport from airports a
left join flights f
on a.airport_id = f.destination_airport 
where f.destination_airport is null;


-- 6. Display passenger name and age. 

select name, age from passengers;


-- 7. Display flights using the highest capacity aircraft. 

select * from aircraft
order by capacity desc;



-- 8. Display distinct aircraft models. 

select distinct model from aircraft;


-- 9. Display booking dates with multiple bookings. 

select booking_date, count(*)as total_bookings from bookings
group by booking_date
having count(*) > 1;


-- 10. Display passengers without bookings. 

-- using join

select p.passenger_id, p.name, b.booking_id from passengers p
left join bookings b
on p.passenger_id = b.passenger_id
where b.passenger_id is null;

-- using subquery

select passenger_id, name 
from passengers
where passenger_id not in (select passenger_id from bookings);


-- 11. Display aircraft sorted by capacity in descending order. 

select * from aircraft
order by capacity desc;


-- 12. Display passenger who booked the earliest flight. 

select p.passenger_id, p.name, b.booking_date from passengers p
join bookings b
on p.passenger_id = b.passenger_id 
order by b.booking_date asc 
limit 1;


-- 13. Display flights that have no bookings. 

-- using join

select f.flight_id, f.flight_number, b.booking_id from flights f
left join bookings b
on f.flight_id = b.flight_id
where b.flight_id is null;

-- using subquery

select flight_id, flight_number
from flights
where flight_id not in (select flight_id from bookings);

-- 14. Display total bookings per passenger. 

-- using join

select p.passenger_id, p.name, count(booking_id) as total_bookings
from passengers p 
left join bookings b 
on p.passenger_id = b.passenger_id
group by p.passenger_id, p.name;

-- using subquery

select passenger_id, name,
(select count(*) from bookings b
where  b.passenger_id = p.passenger_id) as total_bookings
from passengers;

-- 15. Display aircraft not assigned to any flight. 

-- using join

select a.aircraft_id, a.model, f.flight_id, f.flight_number from aircraft a
left join flights f
on a.aircraft_id = f.aircraft_id
where f.flight_id is null;

-- using subquery

select aircraft_id, model 
from aircraft
where aircraft_id not in (select aircraft_id from flights);

-- 16. Display top 5 busiest flights. 

-- using join

select f.flight_id, f.flight_number, count(booking_id) as total_bookings from flights f
left join bookings b
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
order by total_bookings desc
limit 5;

-- using subquery

select f.flight_id, f.flight_number,
(select count(*) from bookings b
where f.flight_id = b.flight_id ) as total_bookings 
from flights f
order by total_bookings desc
limit 5;

-- 17. Display passenger with maximum bookings. 

select p.passenger_id, p.name, count(b.booking_id) 
from passengers p
join bookings b 
on p.passenger_id = b.passenger_id
group by p.passenger_id, p.name
order by count(b.booking_id)  desc
limit 1;

-- 18. Display cities having more than one airport. 

select city, count(airport_id) from airports 
group by city
having count(airport_id) > 1;

-- 19. Display all records from the Passengers table. 

select *from Passengers;

-- 20. Display number of flights per source airport. 

-- using join

select a.airport_id, a.airport_name,a.city, count(f.flight_id) as total_flights
from airports a
join flights f
on a.airport_id = source_airport
group by a.airport_id, a.airport_name, a.city;

-- using subquery

select a.airport_id, a.airport_name,a.city,
(select count(*) from flights f
where f.source_airport = a.airport_id) as total_flights
from airports a;

-- 21. Display youngest passenger. 

select * from passengers
order by  age asc
limit 1;

-- 22. Display all female passengers. 

select * from passengers
where gender = 'female';

-- 23. Display aircraft with lowest capacity. 

select * from aircraft
order by capacity asc
limit 1;


-- 24. Display earliest booking date. 

select min(booking_date) as earliest_booking 
from bookings;


-- 25. Display booking count per flight.
 
-- using join

select f.flight_id, f.flight_number, count(b.booking_id) 
from flights f
left join bookings b
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number;

-- using subquery

select f.flight_id, f.flight_number,
(select count(*) 
from bookings
where f.flight_id = b.flight_id) 
from flights;

-- 26. Display distinct cities having airports. 

select distinct city from airports;

-- 27. Display flights arriving at Mumbai. 

select f.* from flights f
join airports a
on f.destination_airport = a.airport_id
where a.city = 'mumbai';

-- 28. Display airports not used as source. 

select a.airport_id, a.city, f.source_airport 
from airports a
left join flights f
on a.airport_id = f.source_airport 
where f.source_airport is null;

-- 29. Display passengers older than average age. 

select * from passengers
where age > (select avg(age) 
from passengers);

-- 30. Display all records from the Airports table. 

select * from Airports;

-- 31. Display passengers aged between 25 and 40. 

select * from passengers
where age between 25 and 40;

-- 32. Display aircraft models with flight count. 

select a.aircraft_id, a.model, count(f.flight_id) 
from aircraft a 
left join flights f
on  a.aircraft_id = f.aircraft_id
group by a.aircraft_id, a.model;

-- 33. Display latest booking date. 

select * from bookings
order by booking_date desc
limit 1;

-- 34. Display aircraft capacity between 150 and 300. 

select * from aircraft 
where capacity between 150 and 300; 

-- 35. Display passenger names with their seat numbers. 

select p.passenger_id, p.name, b.seat_number 
from passengers p 
inner join bookings b
on  p.passenger_id = b.passenger_id;

-- 36. Display most frequently used aircraft. 

select a.aircraft_id, a.model, count(*) 
from aircraft a 
join flights f 
on a.aircraft_id = f.aircraft_id
group by a.aircraft_id, a.model
order by count(*) desc
limit 1;


-- 37. Display bookings made on latest date. 

select * from bookings
order by booking_date desc
limit 1;

-- 38. Display airport least frequently used as source. 

select source_airport, count(*) 
from flights
group by source_airport
order by count(*) asc
limit 1;


-- 39. Display flights departing from Delhi. 

select f.flight_id, f.source_airport, a.city 
from flights f
join airports a 
on f.source_airport = a.airport_id
where city = 'Delhi';

-- 40. Display average capacity by aircraft model. 

select model, avg(capacity) as avg_capcity 
from aircraft
group by model;

-- 41. Display flight having minimum bookings. 

select f.flight_id, flight_number, count(b.booking_id) 
from flights f
join bookings b 
on  f.flight_id = b.flight_id
group by f.flight_id, flight_number
order by count(b.booking_id)
limit 1;

-- 42. Display aircraft capacities used more than once. 

select capacity, count(*) 
from aircraft
group by capacity
having count(*) > 1;

-- 43. Display passenger names with their flight numbers. 

select p.name, f.flight_number 
from passengers p
join  bookings b
on p.passenger_id = b.passenger_id
join flights f 
on b.flight_id = f.flight_id;

-- 44. Display total bookings per date. 

select booking_date, count(*) 
from bookings
group by booking_date;

-- 45. Display passenger who booked the latest flight. 

select p.passenger_id, p.name, b.booking_id 
from passengers p 
join bookings b 
on p.passenger_id = b.passenger_id
join flights f 
on b.flight_id = f.flight_id
order by f.flight_id desc
limit 1;

-- 46. Display flights sorted by flight number. 

select * from flights
order by flight_number;

-- 47. Display booking count per seat number. 

select seat_number, count(*) from bookings
group by seat_number;

-- 48. Display passengers who traveled on smallest aircraft. 

select distinct p.passenger_id, p.name 
from passengers p
join bookings b
on p.passenger_id = b.passenger_id
join flights f 
on b.flight_id = f.flight_id
join aircraft a 
on f.aircraft_id = a.aircraft_id
where a.capacity = (select min(capacity) from aircraft);

-- 49. Display total number of bookings. 

select count(booking_id) as total_booking 
from bookings;

-- 50. Display airports that are never used in any flight. 

select * from airports
where airport_id not in (select source_airport from flights
union
select destination_airport from flights);

-- 51. Display aircraft model and capacity. 

select model, capacity from aircraft;

-- 52. Display passengers older than 30 years. 

select * from passengers
where age > 30;

-- 53. Display least used aircraft. 

select aircraft_id, count(*) 
from flights
group by aircraft_id
order by count(*) asc
limit 1;

-- 54. Display all bookings. 

select * from bookings;

-- 55. Display airport most frequently used as source. 

select source_airport, count(*) 
from flights
group by source_airport
order by count(*) desc
limit 1;

-- 56. Display total number of flights. 

select count(*) from flights;
select count(flight_id) from flights;

-- 57. Display passenger with minimum bookings. 

select p.passenger_id, p.name, count(b.booking_id) 
from passengers p
join bookings b 
on p.passenger_id = b.passenger_id
group by p.passenger_id, p.name
order by count(b.booking_id)  asc
limit 1;


-- 58. Display all records from the Aircraft table. 

select * from aircraft;

-- 59. Display duplicate seat numbers in bookings. 

select flight_id, seat_number,count(*)
from bookings
group by flight_id, seat_number
having count(*) > 1;

-- 60. Display flight with maximum bookings. 

select flight_id, count(*)
from bookings
group by flight_id 
having count(*) > 1
order by count(*) desc
limit 1;

-- 61. Display passengers sorted by age ascending. 

select * from passengers
order by age asc;

-- 62. Display flights operated by the largest aircraft. 

select f.* from flights f 
join aircraft a 
on f.aircraft_id = a.aircraft_id
where a.capacity = (select max(capacity) from aircraft);

-- 63. Display airport name and city. 

select airport_name, city 
from airports;

-- 64. Display aircraft assigned to more than two flights. 

select aircraft_id, count(*)
from flights
group by aircraft_id
having count(*) > 2;

-- 65. Display airports never used as source.
 
-- using join

select a.airport_id, airport_name, a.city, a.country, f.source_airport from airports a
left join flights f 
on a.airport_id = f.source_airport
where f.source_airport is null;

-- using subquery

select * from airports
where airport_id not in (select source_airport from flights);

-- 66. Display flights not using a particular aircraft. 

SELECT flight_id,
       flight_number,
       aircraft_id
FROM flights
WHERE aircraft_id != 101;

-- 67. Display passengers who made bookings. 

select distinct p.passenger_id, p.name from passengers p 
join bookings b 
on p.passenger_id = b.passenger_id;

-- 68. Display booking date with passenger name. 

select p.name, b.booking_date 
from  passengers p 
join  bookings b
on p.passenger_id = b.passenger_id;

-- 69. Display total capacity of all aircraft. 

select sum(capacity) as total_capacity from aircraft;

-- 70. Display count of passengers by gender. 

select gender, count(*) from passengers
group by gender;

-- 71. Display airport used least frequently as source. 

select source_airport,count(*) from flights
group by source_airport
order by count(*) asc
limit 1;


-- 72. Display passenger with earliest booking. 

select p.* from passengers p 
join bookings b 
on p.passenger_id = b.passenger_id
order by booking_date asc
limit 1;


-- 73. Display airports located in India. 

select * from airports
where country = 'india';


-- 74. Display flight routes with source and destination city. 

select f.flight_id, f.flight_number, a1.city as source_city,a2.city as destination_city from  flights f
join airports a1
on f.source_airport = a1.airport_id
join airports a2
on f.destination_airport = a2.airport_id;

-- 75. Display passenger with latest booking. 

select p.* from passengers p 
join bookings b 
on p.passenger_id = b.passenger_id
order by booking_date desc
limit 1;

-- 76. Display count of flights per aircraft. 

select aircraft_id, count(*) from flights
group by aircraft_id;


-- 77. Display total bookings per flight. 


select flight_id, count(*) from bookings 
group by flight_id;

-- 78. Display top 5 oldest passengers. 

select * from passengers
order by age desc
limit 5;

-- 79. Display aircraft with capacity greater than 200. 

select * from aircraft
where capacity > 200;

-- 80. Display flights using largest aircraft. 

select f.* from flights f 
join aircraft a 
on f.aircraft_id = a.aircraft_id
where a.capacity = (select max(capacity) from aircraft);


-- 81. Display earliest booking record. 

select * from bookings
order by booking_date asc
limit 1;

-- 82. Display minimum passenger age. 

select min(age) as min_age from passengers;

-- 83. Display passengers who traveled on largest aircraft. 

select distinct p.* from passengers p
join bookings b 
on p.passenger_id = b.passenger_id
join flights f
on b.flight_id = f.flight_id
join aircraft a
on f.aircraft_id = a.aircraft_id
where a.capacity =(select max(capacity) from aircraft);

-- 84. Display airports never used in flights. 

select * from airports 
where airport_id not in 
(select source_airport from flights
union
select destination_airport from flights);

-- 85. Display passenger details for a specific flight. 

select p.passenger_id, p.name, p.age, p.gender, f.flight_id from passengers p
join bookings b
on p. passenger_id = b.passenger_id
join flights f 
on  b.flight_id = f.flight_id
where f.flight_id = 247;

-- 86. Display latest 5 bookings. 

select * from bookings
order by booking_date desc
limit 5;

-- 87. Display booking dates having more than one booking. 

select booking_date, count(*) from bookings
group by booking_date
having count(*) >1;

-- 88. Display number of destinations per source airport. 

select source_airport,count(distinct destination_airport) as destinations 
from flights
group by source_airport;

-- 89. Display maximum aircraft capacity. 

select max(capacity) from aircraft;

-- 90. Display aircraft not assigned to flights. 

select * from aircraft
where aircraft_id not in (select distinct aircraft_id from flights);

-- 91. Display average age of passengers. 

select avg(age) avg_age from passengers;

-- 92. Display count of flights per destination airport. 

select destination_airport, count(*) from flights
group by destination_airport;

-- 93. Display flights with bookings above average. 

select f.flight_id,f.flight_number, count(b.booking_id) as booking_count
from flights f 
join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id,f.flight_number
having count(b.booking_id) > 
(select avg(cnt)  from 
(SELECT COUNT(*) as cnt 
FROM bookings
GROUP BY flight_id) t);

-- 94. Display aircraft with highest capacity. 

select * from aircraft
order by capacity = (select max(capacity) from aircraft); 

-- 95. Display passengers whose names start with ‘A’. 

select * from passengers
where name like 'A%';

-- 96. Display all records from the Bookings table. 

select * from bookings;

-- 97. Display booking count per passenger. 

select passenger_id, count(*) from bookings
group by passenger_id;

-- 98. Display bookings for a specific flight. 

select * from bookings 
where flight_id = 201;

-- 99. Display total bookings per month. 

select month(booking_date), count(*) 
from bookings 
group by month(booking_date);

-- 100. Display passenger with highest booking count. 

select p.passenger_id, p.name,count(*) from passengers p
join bookings b 
on p.passenger_id = b.passenger_id
group by p.passenger_id, p.name
order by count(*)  desc 
limit 1;

-- 101. Display flight having minimum booking count. 

select f.flight_id, f.flight_number, count(*) from flights f
join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
order by count(*) asc
limit 1;

-- 102. Display aircraft by size category. 

select aircraft_id, model,capacity ,
case 
when capacity < 150 then 'small'
when capacity between 150 and 300 then 'medium'
else 'large'
end as size_category
from  aircraft;


-- 103. Display passengers categorized by age group. 

select passenger_id, name, age, 
case
when age < 18  then 'child' 
when age between 18 and 60  then 'adult'
else 'senior'
end as age_group
from passengers;

-- 104. Display rank of passengers by age. 

select passenger_id, name, age, rank()
over(order by age desc) as age_rank
from passengers;

-- 105. Display rank of aircraft by capacity. 

select aircraft_id, model, capacity, 
rank() over(order by capacity desc) as rank_capacity
from aircraft;

-- 106. Display top 5 frequent flyers. 

select p.passenger_id, p.name, count(b.booking_id) as booking_count
from passengers p 
join bookings b 
on p.passenger_id = b.passenger_id
group by p.passenger_id, p.name
order by count(b.booking_id) desc
limit 5;

-- 107. Display passengers without bookings using NOT EXISTS. 

select p.passenger_id, p.name, p.age, p.gender
from passengers p 
where NOT EXISTS (
select 1 from bookings b 
where p.passenger_id = b.passenger_id);

SELECT p.*
FROM passengers p
LEFT JOIN bookings b
  ON p.passenger_id = b.passenger_id
WHERE b.booking_id IS NULL;

-- 108. Display passengers with bookings using EXISTS. 

select p.passenger_id, p.name, p.age, p.gender
from passengers p 
where EXISTS (
select 1 from bookings b 
where p.passenger_id = b.passenger_id);

-- 109. Display frequent flyers using CTE. 

WITH booking_counts AS 
(SELECT p.passenger_id,
           p.name,
           COUNT(b.booking_id) AS booking_count
    FROM passengers p
    JOIN bookings b
      ON p.passenger_id = b.passenger_id
    GROUP BY p.passenger_id, p.name
)
SELECT *
FROM booking_counts
WHERE booking_count > 1;

-- 110. Display union of airport cities. 

select city from airports
union 
select city from airports;

-- 111. Display passengers common in bookings and passengers tables. 

select p.passenger_id, p.name, b.booking_id from passengers p
join bookings b 
on p.passenger_id = b.passenger_id;

-- 112. Display aircraft with capacity above average. 

select * from aircraft
where capacity > (select avg(capacity) from aircraft);

-- 113. Display flights without bookings. 

select f.flight_id, f.flight_number 
from flights f
left join bookings b 
on f.flight_id = b.flight_id
where b.booking_id is null;

-- 114. Display least busy source airport. 

select source_airport, count(*) as flight_count 
from flights
group by source_airport
order by flight_count desc
limit 1;

-- 115. Display busiest source airport. 

select source_airport, count(*) as flight_count 
from flights
group by source_airport
order by flight_count desc
limit 1;

-- 116. Display airports with more than one flight as source. 

SELECT *
FROM airports
WHERE airport_id IN (
    SELECT source_airport
    FROM flights
    GROUP BY source_airport
    HAVING COUNT(*) > 1
);

-- 117. Display bookings made on earliest date. 

select * from bookings
where booking_date = (select min(booking_date) from bookings);

-- 118. Display booking count per flight. 

select f.flight_id, f.flight_number, count(b.booking_id) 
from flights f 
left join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number;


-- 119. Display flight-wise booking count. 

select f.flight_id, f.flight_number, count(b.booking_id) 
from flights f 
left join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
order by count(b.booking_id)  desc;

-- 120. Display passenger with lowest booking count. 

select p.name, p.passenger_id, count(b.booking_id) 
from passengers p
left join bookings b 
on p.passenger_id = b.passenger_id 
group by p.name, p.passenger_id
order by count(b.booking_id)  asc
limit 1;


-- 121. Display duplicate flight routes. 

select source_airport, destination_airport, count(*) 
from flights
group by source_airport, destination_airport
having count(*) > 1;

-- 122. Display aircraft assigned to multiple flights. 

SELECT *
FROM aircraft
WHERE aircraft_id IN (
    SELECT aircraft_id
    FROM flights
    GROUP BY aircraft_id
    HAVING COUNT(flight_id) > 1
);

-- 123. Display airports never used as destination. 

select * from airports
where airport_id not in (select destination_airport from flights);

-- 124. Display flights sorted by booking count. 

select f.flight_id, f.flight_number, count(b.booking_id) 
from flights f 
left join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
order by count(b.booking_id) asc;

-- 125. Display total bookings per passenger. 

select passenger_id, count(*) from bookings
group by passenger_id;


-- 126. Display source airport with flight count. 

select source_airport, count(flight_id) 
from flights
group by source_airport;

-- 127. Display booking count grouped by seat number. 

select seat_number, count(booking_id) 
from bookings
group by seat_number;

-- 128. Display bookings made on earliest booking date. 

select * from bookings
where booking_date = (select min(booking_date) 
from bookings);

-- 129. Display flights that have bookings more than average. 

select f.flight_id, f.flight_number, count(booking_id)
from flights f
join bookings b
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
having count(booking_id) > (select avg(booking_id)from (select count(booking_id) from bookings 
group by flight_id) t);

-- 130. Display aircraft used more than once. 

select aircraft_id, flight_number, count(flight_id) 
from flights
group by aircraft_id, flight_number 
having count(flight_id) > 1;

-- 131. Display flights arriving at a specific city. 

select f.flight_id,f.flight_number, a.city as destinstion_city
from flights f 
join airports a 
on f.destination_airport = a.airport_id
WHERE a.city = 'Delhi';

-- 132. Display airports never used in any flight. 

select * from airports 
where airport_id not in (
select source_airport from flights
union 
select destination_airport from flights
);

-- SELECT a.*
-- FROM airports a
-- WHERE NOT EXISTS (
--     SELECT 1
--     FROM flights f
--     WHERE f.source_airport = a.airport_id
--        OR f.destination_airport = a.airport_id
-- ); 

-- 133. Display total bookings per booking date. 

select booking_date, count(booking_id) from bookings
group by booking_date;

-- 134. Display passenger details who booked a particular flight. 

select p.passenger_id, p.name, p.contact_number, f.flight_number
from passengers p 
join bookings b 
on p.passenger_id = b.passenger_id
join flights f
on b.flight_id = f.flight_id
where f.flight_id = 201;

-- 135. Display flight having highest booking count. 

select f.flight_id, f.flight_number, max(b.booking_id) as booking_count from flights f 
join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
order by booking_count desc
limit 1;

-- 136. Display passenger booking history. 

select p.passenger_id, p.name, f. flight_number, b.seat_number, b.booking_date from passengers p
join bookings b 
on p.passenger_id = b.passenger_id
join flights f
on b.flight_id = f.flight_id
ORDER BY p.passenger_id, b.booking_date; 

-- 137. Display flights with no passengers. 

select f.flight_id, f.flight_number, b.booking_id 
from flights f
left join bookings b 
on f.flight_id = b.flight_id
where b.booking_id is null;

-- 138. Display aircraft capacity grouped by model. 

select model, sum(capacity) as total_capacity
from aircraft
group by model;

-- 139. Display average age grouped by gender. 

select gender, avg(age) as avg_age
from passengers 
group by gender;

-- 140. Display minimum age grouped by gender. 

select  gender, min(age) as min_age
from passengers 
group by gender;

-- 141. Display passengers older than average age.

select * from passengers
where age > (select avg(age) as avg_age from passengers);

-- 142. Display passengers without any flight bookings. 

select p.passenger_id, p.name, b.booking_id from passengers p 
left join bookings b 
on p.passenger_id = b.passenger_id
where b.booking_id is null;

-- SELECT p.passenger_id,
--        p.name,
--        p.age,
--        p.gender
-- FROM passengers p
-- WHERE NOT EXISTS (
--     SELECT 1
--     FROM bookings b
--     WHERE b.passenger_id = p.passenger_id
-- );

-- 143. Display count of bookings per flight. 

select f.flight_id, f.flight_number, count(b.booking_id)
from flights f 
left join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number;

-- 144. Display flight routes having duplicate source and destination. 

select source_airport, destination_airport, count(*)
from flights 
group by source_airport, destination_airport
having count(*) > 1;

-- 145. Display booking count per seat. 

select seat_number, count(booking_id) as booking_count
from bookings
group by seat_number;

-- 146. Display passengers having multiple bookings. 

select p.passenger_id, p.name, count(b.booking_id) as booking_count
from passengers p 
join bookings b 
on p.passenger_id = b.passenger_id
group by  p.passenger_id, p.name
having count(b.booking_id)> 1;

-- 147. Display airports used as both source and destination. 

select airport_id, airport_name, city 
from airports
where airport_id in 
( select source_airport from flights)
and airport_id in 
(select destination_airport from flights);

-- SELECT a.*
-- FROM airports a
-- WHERE EXISTS (
--     SELECT 1 FROM flights f
--     WHERE f.source_airport = a.airport_id
-- )
-- AND EXISTS (
--     SELECT 1 FROM flights f
--     WHERE f.destination_airport = a.airport_id
-- );

-- 148. Display passengers who never booked flights.  

select p.passenger_id, p.name, p.age 
from passengers p 
where not exists (
select 1
from bookings b 
where b.passenger_id = b.passenger_id
);

SELECT p.*
FROM passengers p
LEFT JOIN bookings b
  ON p.passenger_id = b.passenger_id
WHERE b.booking_id IS NULL;

-- 149. Display flight having lowest booking count. 

select f.flight_id, f.flight_number, count(b.booking_id)  as booking_count 
from flights f 
left join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
order by booking_count asc 
limit 1;

-- 150. Display flights departing from a specific city. 

select f.flight_id, f.flight_number, a.city as source_city 
from flights f
join airports a 
on f.source_airport = a.airport_id
where a.city = 'pune';

-- 151. Display passengers booked on earliest flight. 

select p.passenger_id, p.name, p.gender, f.flight_id,f.flight_number
from passengers p
join bookings b 
on p.passenger_id = b.passenger_id
join flights f 
on b.flight_id = f.flight_id
where f.flight_id = (
    select MIN(flight_id)
    from flights
);

-- 152. Display passengers booked on latest flight. 

select p.passenger_id, p.name, p.gender, f.flight_id,f.flight_number
from passengers p
join bookings b 
on p.passenger_id = b.passenger_id
join flights f 
on b.flight_id = f.flight_id
where f.flight_id = (
    select max(flight_id)
    from flights);

-- 153. Display most connected source airport. 

select a.airport_id, a.airport_name, a.city, count(f.flight_id) as flight_count
from airports a 
join flights f 
on a.airport_id = f.source_airport
group by a.airport_id, a.airport_name, a.city
order by flight_count desc
limit 1;

-- 154. Display number of destinations from each source airport. 

select  source_airport, count(distinct destination_airport)
from flights 
group by source_airport;

-- 155. Display airports having no flights. 

select airport_id, a.airport_name, a.city
from airports a
where not exists (
select 1
from flights f
where f.source_airport = a.airport_id
or f.destination_airport =a.airport_id);

-- 156. Display flights grouped by aircraft. 

select a.aircraft_id, a.model, count(f.flight_id) as flight_count
from  aircraft a
left join flights f
on a.aircraft_id = f.aircraft_id
group by a.aircraft_id,a.model;

-- 157. Display flights using aircraft above average capacity. 

select f.flight_id,f.flight_number, a.capacity 
from flights f 
join aircraft a 
on f.aircraft_id = a.aircraft_id
where a.capacity > (select avg(a.capacity) from aircraft) ;

-- 158. Display passenger count per age. 

select age, name, gender, count(passenger_id) as passenger_count 
from passengers p 
group by age, name, gender;

-- 159. Display aircraft capacity frequency. 

select capacity, count(aircraft_id) as frequncy
from aircraft
group by capacity;

-- 160. Display booking dates with multiple records. 

select booking_date, count(booking_id) as booking_count
from bookings 
group by booking_date
having count(booking_id) > 1;

-- 161. Display aircraft used least frequently. 

select a.aircraft_id, a.model, count(f.flight_id) as usage_count
from aircraft a 
left join flights f 
on a.aircraft_id = f.aircraft_id
group by a.aircraft_id, a.model
order by usage_count asc
limit 1;

-- 162. Display flights grouped by destination airport. 

select destination_airport, count(flight_id) as flight_count
from flights
group by destination_airport;

-- 163. Display booking count per passenger sorted descending. 

select passenger_id, count(booking_id) as booking_count
from bookings 
group by passenger_id
order by booking_count desc;

SELECT p.passenger_id,
       p.name,
       COUNT(b.booking_id) AS booking_count
FROM passengers p
JOIN bookings b
  ON p.passenger_id = b.passenger_id
GROUP BY p.passenger_id, p.name
ORDER BY booking_count DESC;

-- 164. Display passengers sorted by age descending. 

select age, name, passenger_id 
from passengers 
order by age desc;

-- 165. Display aircraft sorted by capacity ascending. 

select aircraft_id, capacity from aircraft 
order by capacity asc;

-- 166. Display bookings sorted by date. 

select * from bookings
order by booking_date asc;

-- 167. Display passengers with booking count greater than 1. 

select p.passenger_id, p.name, count(b.booking_id) as booking_count
from passengers p 
join bookings b
on p.passenger_id = b.passenger_id
group by p.passenger_id, p.name
having booking_count > 1;

-- 168. Display flights with booking count greater than 1. 

select f.flight_id, f.flight_number, count(booking_id) as booking_count
from  flights f 
join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
having booking_count > 1;

-- 169. Display airports with no departures. 

select a.* from airports a 
left join flights f
on a.airport_id = f.source_airport
where f.flight_id is null;

select a.* from airports a 
where not exists (
select 1
from flights f
where f.source_airport =a.airport_id);

-- 170. Display airports with no arrivals. 

select a.* from airports a 
left join flights f
on a.airport_id = f.destination_airport
where f.flight_id is null;

select a.* from airports a 
where not exists (
select 1
from flights f
where f.destination_airport =a.airport_id);

-- 171. Display aircraft never scheduled. 

select a.* from aircraft a 
left join flights f
on a.aircraft_id = f.aircraft_id 
where f.flight_id is null;

select a.aircraft_id, a.model, a.capacity 
from aircraft a 
where not exists(
select 1 
from flights f 
where f.aircraft_id = a.aircraft_id) ;

-- 172. Display passengers with no bookings using subquery. 

select p.* from passengers p
where not exists (
select 1
from bookings b 
where p.passenger_id = b.passenger_id) ;

select * from passengers
where passenger_id not in (
select passenger_id from bookings) ;


-- 173. Display flights with no bookings using subquery. 

select f.flight_id, f.flight_number from flights f 
where not exists(
select 1
from bookings b 
where b.flight_id = f.flight_id) ;

select * from flights 
 where flight_id not in 
 (select flight_id from bookings) ;

-- 174. Display airports not appearing in flights table. 

select a.airport_id, a.airport_name, a.city 
from airports a 
where not exists(
select 1
from flights f 
where f.source_airport = a.airport_id
or f.destination_airport = a.airport_id) ;

SELECT *
FROM airports
WHERE airport_id NOT IN (
    SELECT source_airport FROM flights
    UNION
    SELECT destination_airport FROM flights
);

-- 175. Display flight booking statistics. 

select count(*) as total_bookings, 
min(booking_id) as min_booking,
max(booking_id) as max_booking,
avg(booking_id) as avg_booking
from bookings;

-- 176. Display passenger booking statistics. 

select p.passenger_id, p.name,
count(b.booking_id) as total_bookings,
min(b.booking_date) as first_booking,
max(b.booking_date) as last_booking
from passengers p
left join bookings b 
on p.passenger_id = b.passenger_id
group by p.passenger_id, p.name;

SELECT COUNT(*) AS total_passengers,
       AVG(age) AS avg_age,
       MIN(age) AS youngest,
       MAX(age) AS oldest
FROM passengers;

-- 177. Display aircraft utilization statistics. 

select a.aircraft_id,a.model,a.capacity ,count(f.flight_id) as total_flights
from aircraft a 
left join flights f 
on a.aircraft_id = f.aircraft_id
group by a.aircraft_id, a.model, a.capacity;

-- 178. Display airport traffic statistics. 

select a.airport_id, a.airport_name, a.city,
count(f1.flight_id) as departures,
count(f2.flight_id) as arrivals,
count(f1.flight_id) + count(f2.flight_id) as total_traffic
from airports a 
left join flights f1
on a.airport_id = f1.source_airport
left join flights f2
on a.airport_id = f2.destination_airport
group by a.airport_id, a.airport_name, a.city;

SELECT a.airport_id,
       a.airport_name,
       a.city,
       (SELECT COUNT(*) 
        FROM flights f 
        WHERE f.source_airport = a.airport_id) AS departures,
       (SELECT COUNT(*) 
        FROM flights f 
        WHERE f.destination_airport = a.airport_id) AS arrivals
FROM airports a;

-- 179. Display flight with maximum passenger count. 

select f.flight_id, f.flight_number, 
count(b.booking_id) as passenger_count
from flights f 
left join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
order by passenger_count desc 
limit 1;

-- 180. Display flight with minimum passenger count. 

select f.flight_id, f.flight_number, 
count(b.booking_id) as passenger_count
from flights f 
left join bookings b 
on f.flight_id = b.flight_id
group by f.flight_id, f.flight_number
order by passenger_count asc 
limit 1;

-- 181. Display booking trend per date. 

select booking_date, count(booking_id) as total_bookings
from bookings 
group by booking_date
order by booking_date;

-- 182. Display passenger booking trend. 

select booking_date, count(distinct passenger_id) as passenger_count
from bookings  
group by booking_date
order by booking_date;

-- 183. Display flight ranking by booking count. 

select f.flight_id, count(b.booking_id) as booking_count, 
rank() over(order by count(b.booking_id) desc) as rank_position
from flights f
left join bookings b 
on f.flight_id = b.flight_id 
group by f.flight_id;

-- 184. Display aircraft ranking by usage. 

select a.aircraft_id, a.model, count(f.flight_id)  as total_flight,
rank() over(order by count(f.flight_id) desc) as rank_position
from aircraft a 
left join flights f 
on a.aircraft_id = f.aircraft_id
group by a.aircraft_id, a.model;

-- 185. Display passenger ranking by bookings. 

select p.passenger_id, p.name, count(b.booking_id) as booking_count, 
rank() over(order by count(b.booking_id) desc ) as rank_position
from passengers p 
left join bookings b 
on p.passenger_id = b.passenger_id
group by p.passenger_id, p.name;

-- 186. Display aircraft classification by size. 

select aircraft_id, model, capacity,
case
when capacity < 100 then 'small'
when capacity between 100 and 200 then 'medium'
else 'large' 
end as size_category
from aircraft;


-- 187. Display passenger classification by age group. 
 
select passenger_id, name, age,
case 
when age <18 then 'child'
when age between 18 and 60 then 'adult'
else 'senior'
end as age_group
from passengers;
