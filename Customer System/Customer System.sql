create database pos1;
use pos1;
create table staff(
	id int not null auto_increment,
    name_staff varchar (40) not null,
    gender char not null,
    staff_role varchar(30) not null,
    salary int not null,
    phone_number varchar (15) not null,
    address varchar(100) not null,
    email varchar (50) not null,
    password_staff varchar (20) not null,
    start_date date not null,
    end_date date,
    primary key (id)
);
create table customer(
	id int not null auto_increment,
    name varchar (40) not null,
    gender char not null,
    phone_number varchar (15) not null,
    date_of_birth date not null,
    address varchar(100) not null,
    email varchar (50) not null,
    primary key (id)
);
create table product(
	code_p varchar(15) not null,
	id int not null auto_increment,
    name_p varchar(40) not null,
    import_p float not null,
    sale_p float not null,
    amount int not null,
    expire_date date not null,
    import_date date not null,
    primary key (id)
);
create table transactionPOS(
	id int not null auto_increment,
    product_id int not null,
    staff_id int not null,
    customer_id int not null,
    buy_date datetime not null,
    payment_method varchar (10) not null,
    product_amount int not null,
    discount float,
    primary key (id),
    foreign key (product_id) references product(id),
    foreign key (staff_id) references staff(id),
    foreign key (customer_id) references customer(id)
);


INSERT INTO Product VALUES
('W001', 1, 'RedSpy 275ml*4', 3.3, 4.2, 100, '2024-05-03', '2023-03-03'),
('W002', 2, 'BlueSpy 275ml*4', 3.3, 4.2, 100, '2024-05-03', '2023-03-03'),
('W003', 3, 'BlackSpy 275ml*4', 3.3, 4.2, 100, '2024-05-03', '2023-03-03'),
('W004', 4, 'CruiserVodka 275ml*4', 4.0, 5.3, 100, '2024-05-01', '2023-03-03'),
('W005', 5, 'APPOLO Apple 750ml*1', 1.5, 2.8, 50, '2024-07-01', '2023-03-03'),
('W006', 6, 'APPOLO Melon 750ml*1', 1.5, 2.8, 50, '2024-07-01', '2023-03-03'),
('W007', 7, 'RedCruiser 275ml*4', 4.2, 5.3, 100, '2024-05-03', '2023-03-03'),
('W008', 8, 'WhiteWine 750ml*1', 12.2, 15.5, 50, '2024-05-03', '2023-03-03'),
('W009', 9, 'APPOLO Apple 750ml*1', 1.5, 2.8, 25, '2024-11-01', '2023-03-04'),
('W0010', 10, 'APPOLO Melon 750ml*1', 1.5, 2.8, 25, '2024-11-01', '2023-03-04'),
('W002', 11, 'BlueSpy 275ml*4', 3.3, 4.2, 30, '2024-06-03', '2023-03-05'),
('W003', 12, 'BlackSpy 275ml*4', 3.3, 4.2, 30, '2024-06-03', '2023-03-05'),
('W004', 13, 'CruiserVodka 275ml*4', 2.5, 5.3, 35, '2024-06-01', '2023-03-05'),
('B001', 14, 'Tiger 330ml*24', 10.5, 14.1, 20, '2024-04-04', '2023-03-03'),
('B002', 15, 'Heineken 330ml*24', 11.5, 15.5, 20, '2024-04-04', '2023-03-03'),
('B003', 16, 'Angkor 330ml*24', 11.4, 14.4, 20, '2024-04-04', '2023-03-03'),
('B004', 17, 'ABC 330ml*24', 28.5, 32, 20, '2024-04-04', '2023-03-03'),
('B005', 18, 'Singha 330ml*24', 11.2, 14, 20, '2024-04-04', '2023-03-03'),
('B006', 19, 'Anchor 330ml*24', 10.2, 12, 20, '2024-04-04', '2023-03-03'),
('B007', 20, 'Coronita 207ml*6', 4.0, 5.9, 30, '2024-04-04', '2023-03-03'),
('B008', 21, 'Tiger 330ml*24', 10.8, 14.1, 20, '2024-06-04', '2023-03-20'),
('B009', 22, 'Heineken 330ml*24', 12.5, 15.5, 20, '2024-06-04', '2023-03-20'),
('B0010', 23, 'Angkor 330ml*24', 11.2, 14.4, 20, '2024-06-04', '2023-03-20'),
('B0011', 24, 'ABC 330ml*24', 30.2, 32, 20, '2024-06-04', '2023-03-20'),
('B0012', 25, 'Singha 330ml*24', 11.1, 14, 20, '2024-06-04', '2023-03-20'),
('B0013', 26, 'Anchor 330ml*24', 10.0, 12, 20, '2024-06-04', '2023-03-20'),
('B0014', 27, 'Coronita 207ml*6', 4.0, 5.9, 30, '2024-06-04', '2023-03-20'),
('B0014', 28, 'Coronita 207ml*6', 4.0, 5.9, 10, '2023-06-04', '2023-03-20'),
('B0014', 29, 'Coronita 207ml*6', 4.0, 5.9, 5, '2023-06-20', '2023-03-20');

INSERT INTO staff VALUES 
(1, 'Jenna Ortega', 'F', 'Cashier', 200, '65896311', 'Street 51, Tonle Bassac, Phnom Penh, Cambodia', 'jennaOr@gmail.com', 'Jen@001', '2023-01-01', NULL),
(2, 'Emma Myer', 'F', 'Cashier', 200, '12589634', 'Preah Norodom Boulevard, Sangkat Tonle Bassac, Phnom Penh, Cambodia', 'emmaMy@gmail.com', 'Em@001', '2023-01-01', NULL),
(3, 'Percy Hynes', 'M', 'Cashier', 200, '11589963', 'Street 310, Toul Kork, Phnom Penh, Cambodia', 'percyHy@gmail.com', 'per@01', '2023-03-01', NULL),
(4, 'Hunter Doohan', 'M', 'Cashier', 200, '66847251', 'Preah Norodom Boulevard, Sangkat Tonle Bassac, Phnom Penh, Cambodia', 'hunterDodo@gmail.com', 'Hun@001', '2023-03-01', NULL),
(5, 'Catherine Jones', 'F', 'Cashier', 200, '12589963', 'Street 310, Toul Kork, Phnom Penh, Cambodia', 'catherinJoee@gmail.com', 'Cat@001', '2023-03-01', NULL),
(6, 'Chritina Ricci', 'M', 'Delivery', 250, '99523864', 'Mao Tse Toung Boulevard, Tuol Kouk, Phnom Penh, Cambodia', 'christinRich@gmail.com', 'Chr@001', '2023-03-01', NULL),
(7, 'Gwendoline Christie', 'F', 'Manager', 900, '11589643', 'Mao Tse Toung Boulevard, Tuol Kouk, Phnom Penh, Cambodia', 'gwendoodoo@gmail.com', 'Gw@001', '2023-01-01', NULL),
(8, 'Justine Bieber', 'M', 'Delivery', 250, '11253369', 'Mao Tse Toung Boulevard, Tuol Kouk, Phnom Penh, Cambodia', 'justin@gmail.com', 'justt@001', '2023-01-01', '2023-05-05'),
(9, 'Norway Huner', 'M', 'Delivery', 250, '11569987', 'Street 163, Toul Tom Poung, Phnom Penh, Cambodia', 'norhunter@gmail.com', 'norwy@001', '2023-01-01', '2023-05-05'),
(10, 'Joe Ellen', 'M', 'Delivery', 250, '15896345', 'Street 163, Toul Tom Poung, Phnom Penh, Cambodia', 'ellen@gmail.com', 'ellen@001', '2023-01-01', '2023-05-05');

INSERT INTO customer VALUES 
(1, 'Taylor Swift', 'F', '17409363', '1989-06-04', 'Street 51, Tonle Bassac, Phnom Penh, Cambodia', 'taylorSwift@gmail.com'),
(2, 'Harry Style', 'M', '11360086', '1999-05-04', 'Street 163, Toul Tom Poung, Phnom Penh, Cambodia', 'harry@gmail.com'),
(3, 'Mark Zackberg', 'M', '126411900', '1990-02-04', 'Mao Tse Toung Boulevard, Tuol Kouk, Phnom Penh, Cambodia', 'mark@gmail.com'),
(4, 'Tom Holland', 'M', '99549958', '1988-02-04', 'Street 51, Tonle Bassac, Phnom Penh, Cambodia', 'tomHo@gmail.com'),
(5, 'Tom Cruise', 'M', '11320014', '2000-06-04', 'Mao Tse Toung Boulevard, Tuol Kouk, Phnom Penh, Cambodia', 'tomCr@gmail.com'),
(6, 'Jack Mar', 'M', '964582353', '2000-02-04', 'Mao Tse Toung Boulevard, Tuol Kouk, Phnom Penh, Cambodia', 'jackM@gmail.com'),
(7, 'Shen Beijing', 'M', '66862262', '1999-06-04', 'Street 163, Toul Tom Poung, Phnom Penh, Cambodia', 'shenBei@gmail.com'),
(8, 'Chan Moon', 'M', '66547893', '1985-05-04', 'Street 51, Tonle Bassac, Phnom Penh, Cambodia', 'moonChan@gmail.com'),
(9, 'Sun Flower', 'F', '12589344', '1999-03-04', 'Street 163, Toul Tom Poung, Phnom Penh, Cambodia', 'sunFlow@gmail.com'),
(10, 'Selena Gomez', 'F', '12358946', '2000-05-14', 'Street 163, Toul Tom Poung, Phnom Penh, Cambodia', 'selenaGogo@gmail.com'),
(11, 'John Smith', 'M', '12345678', '1989-02-04', 'Preah Sisowath Quay, Daun Penh, Phnom Penh, Cambodia', 'johnSmith@gmail.com'),
(12, 'Jane Doe', 'F', '87654321', '1987-06-04', 'Preah Sisowath Quay, Daun Penh, Phnom Penh, Cambodia', 'janeDoe@gmail.com'),
(13, 'David Beckham', 'M', '98765432', '1985-02-04', 'Street 51, Tonle Bassac, Phnom Penh, Cambodia', 'davidBeckham@gmail.com'),
(14, 'Emma Watson', 'F', '24681012', '1975-06-04', 'Street 51, Tonle Bassac, Phnom Penh, Cambodia', 'emmaWatson@gmail.com'),
(15, 'Leonardo DiCaprio', 'M', '369121518', '1983-06-04', 'Monivong Boulevard, Sangkat Wat Phnom, Phnom Penh, Cambodia', 'leoDiCaprio@gmail.com'),
(16, 'Miley Cyrus', 'F', '13579246', '1988-06-04', 'Monivong Boulevard, Sangkat Wat Phnom, Phnom Penh, Cambodia', 'mileyCyrus@gmail.com'),
(17, 'Brad Pitt', 'M', '95175384', '1980-06-04', 'Preah Sisowath Quay, Daun Penh, Phnom Penh, Cambodia', 'bradPitt@gmail.com'),
(18, 'Ariana Grande', 'F', '78945612', '1990-06-04', 'Monivong Boulevard, Sangkat Wat Phnom, Phnom Penh, Cambodia', 'arianaGrande@gmail.com'),
(19, 'Chris Evans', 'M', '15948726', '1989-06-04', 'Preah Sisowath Quay, Daun Penh, Phnom Penh, Cambodia', 'chrisEvans@gmail.com'),
(20, 'Beyoncé Knowles', 'F', '35724681', '1987-06-04', 'Street 163, Toul Tom Poung, Phnom Penh, Cambodia', 'beyonceKnowles@gmail.com');

INSERT INTO transactionPOS values
    (1, 1, 1, 1, '2023-05-03 09:12:34', 'ABA', 5, 0.1),
    (2, 8, 1, 1, '2023-05-03 10:23:45', 'Cash', 5, 0.15),
    (3, 7, 2, 5, '2023-05-03 11:34:56', 'Cash', 6, 0.15),
    (4, 7, 2, 6, '2023-05-03 12:45:01', 'Cash', 4, 0.15),
    (5, 8, 2, 5, '2023-05-03 13:56:12', 'ABA', 2, 0.1),
    (6, 8, 2, 1, '2023-05-03 14:07:23', 'ABA', 1, 0.1),
    (7, 8, 3, 3, '2023-05-03 15:18:34', 'ABA', 5, 0.1),
    (8, 17, 3, 4, '2023-05-03 16:29:45', 'ABA', 2, 0.1),
    (9, 7, 3, 6, '2023-05-03 17:40:56', 'ABA', 3, 0.1),
    (10, 5, 3, 1, '2023-05-03 18:51:01', 'Cash', 1, 0.15),
    (11, 2, 4, 2, '2023-05-03 19:02:12', 'ABA', 2, 0.1),
    (12, 2, 4, 3, '2023-05-03 20:13:23', 'ABA', 1, 0.1),
    (13, 5, 4, 4, '2023-05-03 21:24:34', 'Cash', 3, 0.15),
    (14, 6, 4, 5, '2023-05-03 22:35:45', 'ABA', 3, 0.1),
    (15, 3, 4, 3, '2023-05-03 23:46:56', 'ABA', 3, 0.1)
;





















