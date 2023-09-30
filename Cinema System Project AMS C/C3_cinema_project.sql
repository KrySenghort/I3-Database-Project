-- drop database cinema;
-- create database CINEMA;
use cinema;
-- create table movie(
-- movie_id int auto_increment primary key not null unique ,
-- movie_title varchar (200) not null,
-- movie_duration time,
-- movie_genre varchar(30) not null,
-- movie_cast varchar(500),
-- movie_language varchar(50) not null,
-- movie_director varchar(45) not null,
-- movie_release date
-- );

-- insert into movie(movie_title, movie_duration, movie_genre, movie_cast, movie_language, movie_director, movie_release)
-- VALUES(
-- 	('Inception', '02:28:00', 'Action, Sci-Fi', 'Leonardo DiCaprio, Joseph Gordon-Levitt, Ellen Page', 'English', 'Christopher Nolan', '2010-07-16'),
--     ('The Shawshank Redemption', '02:22:00', 'Drama', 'Tim Robbins, Morgan Freeman', 'English', 'Frank Darabont', '1994-09-23'),
--     ('Pulp Fiction', '02:34:00', 'Crime, Drama', 'John Travolta, Uma Thurman, Samuel L. Jackson', 'English', 'Quentin Tarantino', '1994-10-14'),
--     ('The Dark Knight', '02:32:00', 'Action, Crime, Drama', 'Christian Bale, Heath Ledger, Aaron Eckhart', 'English', 'Christopher Nolan', '2008-07-18'),
--     ('Fight Club', '02:19:00', 'Drama', 'Brad Pitt, Edward Norton, Helena Bonham Carter', 'English', 'David Fincher', '1999-10-15'),
--     ('The Matrix', '02:16:00', 'Action, Sci-Fi', 'Keanu Reeves, Laurence Fishburne, Carrie-Anne Moss', 'English', 'Lana Wachowski, Lilly Wachowski', '1999-03-31'),
--     ('Forrest Gump', '02:22:00', 'Drama, Romance', 'Tom Hanks, Robin Wright, Gary Sinise', 'English', 'Robert Zemeckis', '1994-07-06'),
--     ('Goodfellas', '02:26:00', 'Biography, Crime, Drama', 'Robert De Niro, Ray Liotta, Joe Pesci', 'English', 'Martin Scorsese', '1990-09-19'),
--     ('The Godfather', '02:55:00', 'Crime, Drama', 'Marlon Brando, Al Pacino, James Caan', 'English', 'Francis Ford Coppola', '1972-03-24'),
--     ('The Avengers', '02:23:00', 'Action, Adventure, Sci-Fi', 'Robert Downey Jr., Chris Evans, Scarlett Johansson', 'English', 'Joss Whedon', '2012-05-04')
--     );

-- select * from movie;
-- delete from movie where movie_id >= 10;
-- create table theater(
-- theater_id int auto_increment not null unique,
-- theater_name varchar(40) not null,
-- theater_capacity int not null,
-- primary key(theater_id)
-- );

-- INSERT INTO theater (theater_name, theater_capacity)
-- VALUES
--   ('Theater A', 100),
--   ('Theater B', 150),
--   ('Theater C', 200),
--   ('Theater D', 120),
--   ('Theater E', 180),
--   ('Theater F', 90),
--   ('Theater G', 160),
--   ('Theater H', 130),
--   ('Theater I', 110),
--   ('Theater J', 140);


-- create table show_time(
-- show_time_id int auto_increment primary key not null unique,
-- movie_id int,
-- `date` datetime,
-- theater_id int,
-- foreign key(theater_id) references theater(theater_id),
-- foreign key(movie_id) references movie(movie_id)
-- );

-- INSERT INTO show_time (movie_id, `date`, theater_id)
-- VALUES
--   (1, '2023-06-14 10:00:00', 1),
--   (2, '2023-06-14 12:30:00', 2),
--   (3, '2023-06-14 14:45:00', 3),
--   (4, '2023-06-14 17:00:00', 1),
--   (5, '2023-06-14 19:15:00', 2),
--   (6, '2023-06-14 21:30:00', 3),
--   (7, '2023-06-15 10:30:00', 1),
--   (8, '2023-06-15 13:00:00', 2),
--   (9, '2023-06-15 16:15:00', 3),
--   (10, '2023-06-15 19:30:00', 1);

-- select * from show_time;

-- create table customer(
-- customer_id int auto_increment not null unique,
-- customer_name varchar(50),
-- customer_sex varchar(5),
-- customer_payment_method varchar(50),
-- customer_pays float not null
-- );

alter table customer modify column customer_sex varchar(10);

-- INSERT INTO customer (customer_name, customer_sex, customer_payment_method, customer_pays)
-- VALUES
--   ('John Doe', 'Male', 'Credit Card', 100.00),
--   ('Jane Smith', 'Female', 'PayPal', 50.00),
--   ('David Johnson', 'Male', 'Cash', 75.50),
--   ('Emily Davis', 'Female', 'Credit Card', 200.00),
--   ('Michael Wilson', 'Male', 'PayPal', 150.00),
--   ('Sarah Anderson', 'Female', 'Cash', 80.25),
--   ('Robert Brown', 'Male', 'Credit Card', 120.50),
--   ('Jessica Taylor', 'Female', 'PayPal', 90.00),
--   ('Christopher Thomas', 'Male', 'Cash', 60.75),
--   ('Stephanie Martinez', 'Female', 'Credit Card', 110.00);


-- create table ticket(
-- ticket_id int auto_increment primary key not null,
-- seat_address varchar(30) not null,
-- ticket_type varchar(10),
-- `row` varchar(5),
-- customer_id int,
-- show_time_id int,
-- screen varchar(5) not null,
-- foreign key(show_time_id) references show_time(show_time_id),
-- foreign key(customer_id) references customer(customer_id)
-- );

alter table ticket modify column screen varchar(10);

-- INSERT INTO ticket (seat_address, ticket_type, `row`, customer_id, show_time_id, screen)
-- VALUES
--   ('A1', 'Regular', 'A', 11, 1, 'Screen 1'),
--   ('B2', 'VIP', 'B', 12, 2, 'Screen 2'),
--   ('C3', 'Regular', 'C', 13, 3, 'Screen 3'),
--   ('D4', 'VIP', 'D', 14, 4, 'Screen 4'),
--   ('E5', 'Regular', 'E', 15, 5, 'Screen 5'),
--   ('F6', 'VIP', 'F', 16, 6, 'Screen 6'),
--   ('G7', 'Regular', 'G', 17, 7, 'Screen 7'),
--   ('H8', 'VIP', 'H', 18, 8, 'Screen 8'),
--   ('I9', 'Regular', 'I', 19, 9, 'Screen 9'),
--   ('J10', 'VIP', 'J', 20, 10, 'Screen 10');
-- delete from ticket;

-- INSERT INTO ticket (seat_address, ticket_type, `row`, customer_id, show_time_id, screen)
-- VALUES
--   ('A1', 'Regular', 'A', 11, 1, 'Front'),
--   ('B2', 'VIP', 'B', 12, 2, '3D'),
--   ('C3', 'Regular', 'C', 13, 3, 'Rear Projection'),
--   ('D4', 'VIP', 'D', 14, 4, 'Front'),
--   ('E5', 'Regular', 'E', 15, 5, '3D'),
--   ('F6', 'VIP', 'F', 16, 6, 'Rear Projection'),
--   ('G7', 'Regular', 'G', 17, 7, 'Front'),
--   ('H8', 'VIP', 'H', 18, 8, '3D'),
--   ('I9', 'Regular', 'I', 19, 9, 'Rear Projection'),
--   ('J10', 'VIP', 'J', 20, 10, 'Front');

-- describe ticket;

-- alter table ticket modify column screen varchar(20);

-- select *  from ticket;

-- create table staff(
-- staff_id int auto_increment primary key not null unique,
-- staff_name varchar(45) not null,
-- staff_roll varchar(200) not null,
-- staff_phone_number varchar(15),
-- staff_email varchar(50) not null
-- );
-- alter table staff modify column staff_phone_number varchar(15);
-- describe staff;

-- INSERT INTO staff (staff_name, staff_roll, staff_phone_number, staff_email)
-- VALUES
--   ('John Doe', 'Manager', '+85512345678', 'john.doe@example.com'),
--   ('Jane Smith', 'Supervisor', '+85598765432', 'jane.smith@example.com'),
--   ('David Johnson', 'Assistant', '+85587654321', 'david.johnson@example.com'),
--   ('Emily Brown', 'Clerk', '+85523456789', 'emily.brown@example.com'),
--   ('Michael Davis', 'Technician', '+85534567890', 'michael.davis@example.com'),
--   ('Sarah Wilson', 'Analyst', '+85545678901', 'sarah.wilson@example.com'),
--   ('Daniel Thompson', 'Coordinator', '+85556789012', 'daniel.thompson@example.com'),
--   ('Jennifer Lee', 'Supervisor', '+85567890123', 'jennifer.lee@example.com'),
--   ('Matthew Harris', 'Clerk', '+85578901234', 'matthew.harris@example.com'),
--   ('Olivia Martin', 'Technician', '+85589012345', 'olivia.martin@example.com');
