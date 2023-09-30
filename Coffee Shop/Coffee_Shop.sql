Create database coffeeshop;
USE coffeeshop;

create table coffee(
	id varchar(10) not null,
    Fname varchar(20) not null,
    size varchar(10) not null,
    price float not null,
    primary key(id)
);

create table customer(
	id varchar(10) not null,
    Cname varchar(20) not null,
    phone_number varchar(20),
    primary key(id)
);

create table employee(
	id varchar(10) not null,
    Ename varchar(20) not null,
    position varchar(30) not null,
    hired_date date not null,
    salary int not null,
    manager_id varchar(10),
    primary key(id),
	foreign key(manager_id) references employee(id)
);

create table bill(
	bill_No varchar(10) not null,
	Bdate date not null,
	coffee_id varchar(10) not null,
    cust_id varchar(10) not null,
    emp_id varchar(10) not null,
    quantity int not null,
    price float not null,
    primary key(bill_No),
    foreign key(cust_id) references customer(id),
	foreign key(coffee_id) references coffee(id),
	foreign key(emp_id) references employee(id)
);

create table inventory(
	supply_id int auto_increment not null,
    name varchar(20) not null,
    quantity int not null,
    unit_price float not null,
    primary key(supply_id)
);

create table supply_management(
	emp_id varchar(10) not null,
    inv_id int not null,
    sm_status varchar(10) not null, /* add/use */
    supply_quantity int not null,
    `time` time not null,
    sm_date date not null,
    primary key(emp_id, inv_id),
    foreign key(emp_id) references employee(id),
	foreign key(inv_id) references inventory(supply_id)
);

INSERT INTO coffee(id, Fname, size, price) VALUES
('f001', 'Espresso', 'Small', 2.50),
('f002', 'Cappuccino', 'Small', 3.00),
('f003', 'Latte', 'Small', 3.50),
('f004', 'Mocha', 'Small', 4.00),
('f005', 'Caramel Macchiato', 'Medium', 4.50),
('f006', 'Americano', 'Medium', 3.00),
('f007', 'Drip Coffee', 'Small', 1.50),
('f008', 'Hot Tea', 'Small', 1.00),
('f009','Iced Tea', 'Small', 1.50),
('f010', 'Hot Chocolate', 'Large', 6.00);
INSERT INTO customer(id, Cname, phone_number) values
('c001', 'Makara','012 878 999'),
('c002', 'Sophy','077 878 969'),
('c003', 'Aceu','096 868 696'),
('c004', 'Daphie','012 578 499'),
('c005', 'Brandon','012 228 499'),
('c006', 'Briand','012 665 939'),
('c007', 'Cristian','097 230 919'),
('c008', 'YuthZin','011 844 993'),
('c009', 'SengLay','012 123 996'),
('c010', 'Kreth','012 374 347');
INSERT INTO employee(id, Ename, position, hired_date, salary) VALUES
('e010','Waka','Manager', '2022-01-08', 1000 );
INSERT INTO employee(id, Ename, position, hired_date, salary, manager_id) VALUES
('e001','Maki','Cashier', '2022-01-08', 350, 'e010'),
('e002','Mikey','Cashier', '2022-02-08', 350, 'e010'),
('e003','Roki','Cashier', '2022-02-08', 350, 'e010'),
('e004','Suki','Barista', '2022-01-08', 450, 'e010'),
('e005','Zenki','Barista', '2022-02-08', 450, 'e010'),
('e006','Tobi','Barista', '2022-02-08', 450, 'e010'),
('e007','Karo','Barista', '2022-02-08', 450, 'e010'),
('e008','Pochita','Waiter', '2022-01-08', 300, 'e010'),
('e009','Arthur','Waiter', '2022-02-08', 300, 'e010');
INSERT INTO bill(bill_No, Bdate, coffee_id, cust_id, emp_id, quantity, price) VALUES
('b001','2023-06-10','f001', 'c001', 'e002', 1, 2.50),
('b002','2023-06-10','f002', 'c002', 'e001', 2, 3.00),
('b003','2023-06-10','f003', 'c003', 'e002', 3, 3.50),
('b004','2023-06-10','f004', 'c004', 'e003', 2, 4.00),
('b005','2023-06-10','f005', 'c005', 'e001', 1, 4.50),
('b006','2023-06-10','f006', 'c006', 'e002', 3, 3.00),
('b007','2023-06-10','f007', 'c007', 'e001', 1, 1.50),
('b008','2023-06-10','f008', 'c008', 'e003', 4, 1.00),
('b009','2023-06-10','f009', 'c009', 'e001', 8, 1.50),
('b010','2023-06-10','f010', 'c010', 'e002', 12, 6.00);
INSERT INTO inventory (supply_id, name, quantity, unit_price)
VALUES
(1, 'Coffee', 10, 4),
(2, 'Sugar', 5, 2),
(3, 'Milk', 10, 3),
(4, 'Cream', 5, 2),
(5, 'Chocolate', 5, 5),
(6, 'Whipped cream', 5, 2),
(7, 'Syrup', 5, 2),
(8, 'Ice', 10, 1),
(9, 'Cups', 100, 0.5),
(10, 'Sodas', 50, 2),
(11, 'Water', 50, 0.5),
(12, 'Juices', 50, 4),
(13, 'Tea', 10, 1),
(14, 'Espresso', 10, 4),
(15, 'Latte', 10, 3.5),
(16, 'Macchiato', 10, 3),
(17, 'Cappuccino', 10, 3),
(18, 'Americano', 10,3 ),
(19, 'Frappuccino', 10, 3),
(20, 'Mocha', 10, 3);
INSERT INTO supply_management(emp_id, inv_id, supply_quantity, sm_date, `time`, sm_status) VALUES
('e005', 1, 25, '2023-06-01', '19:20:10', 'add'),
('e006', 3, 3, '2023-06-03', '13:30:10', 'use'),
('e005', 4, 5, '2023-06-04', '9:40:10', 'use'),
('e004', 5, 15, '2023-06-05', '10:30:10', 'add'),
('e005', 7, 25, '2023-06-07', '16:50:10', 'add'),
('e006', 10, 15, '2023-06-09', '11:40:10', 'add'),
('e007', 12, 5, '2023-06-11', '17:50:10', 'use'),
('e005', 16, 5, '2023-06-13', '13:20:10', 'use')

;
