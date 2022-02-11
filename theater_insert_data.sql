insert into "customer"(id,first_name, last_name, email)
values
(1, 'Derek', 'Hawkins', 'derekh@codingtemple.com'),
(2, 'Lucas', 'Lang', 'lucasl@codingtemple.com'),
(3, 'Joel', 'Carter', 'joelc@codingtemple.com'),
(4, 'Shakti', 'Shah', 'shaktis@codingtemple.com');

--select * from customer c

insert into "staff"(id,first_name, last_name, email)
values
(96, 'Lionel', 'Messi', 'lionelm@codingtemple.com'),
(97, 'Christiano', 'Ronaldo', 'christianor@codingtemple.com'),
(98, 'Frank', 'Lampard', 'frankl@codingtemple.com'),
(99, 'Ashley', 'Cole', 'ashleyc@codingtemple.com');

--select * from staff f

insert into "movie"(id,title,showtime)
values
(46, 'Tequila Mockingbird', '2022-02-11 10:00:00'),
(47, 'Scavangers: Fight for every scrap','2022-02-11 10:15:00'),
(48, 'The Good, the Bad, the Fugly', '2022-02-11 09:00:00'),
(49, 'BirdMan: Put Some Respec on his Name', '2022-02-11 09:30:00');

--select * from movie

insert into "concession"(id,item_name,amount,customer_id,staff_id)
values
(11, 'Popcorn', 4.99, 1, 97),
(12, 'Coke', 3.99, 1, 98),
(13, 'Nachos', 5.99, 2, 96),
(14, 'Hot Dog', 4.99, 3, 99),
(15, 'Pizza', 5.99, 4, 96);

--select * from concession c where c.item_name = 'Popcorn'

insert into "ticket"(id,movie_name,movie_time,movie_id,staff_id,amount)
values
(101, 'Tequila Mockingbird', '2022-02-11 10:00:00', 46, 96, 9.99),
(102, 'Scavangers: Fight for every scrap', '2022-02-11 10:15:00', 47, 98, 9.99),
(103, 'The Good, the Bad, the Fugly', '2022-02-11 09:00:00', 48, 97, 9.99),
(104, 'BirdMan: Put Some Respec on his Name', '2022-02-11 09:30:00', 49, 99, 9.99);

--select * from ticket t

insert into "payment"(id,customer_id,concession_amount,ticket_amount,ticket_id,concession_id)
values
(96, 2, 5.99, 9.99, 101, 13),
(98, 1, 9.98, 9.99, 102, 12),
(97, 3, 4.99, 9.99, 103, 15),
(99, 4, 5.99, 9.99, 104, 14);

--select * from payment

insert into "receipt"(id,fname,lname,ticket_id,movie_id,title,showtime,customer_id,staff_id)
values
(601, 'Derek', 'Hawkins', 101, 46, 'Tequila Mockingbird','2022-02-11 10:00:00', 1, 98),
(602, 'Lucas', 'Lang', 102, 47, 'Scavangers: Fight for every scrap','2022-02-11 10:15:00', 2, 96),
(603, 'Shakti', 'Shah', 103, 48, 'The Good, the Bad, the Fugly','2022-02-11 09:00:00', 4, 97),
(604, 'Joel', 'Carter', 104, 49, 'BirdMan: Put Some Respec on his Name', '2022-02-11 09:30:00', 3, 99);

--select * from receipt