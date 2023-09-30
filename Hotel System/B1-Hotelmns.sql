CREATE DATABASE IF NOT EXISTS hotelmns_v5_1;
USE hotelmns_v5_1;
-- Create the CUSTOMER table
CREATE TABLE customer (
    customer_id INT AUTO_INCREMENT NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    PRIMARY KEY(customer_id)
);

-- Create the CONTACT table
CREATE TABLE contact (
    contact_id INT AUTO_INCREMENT,
    customer_id INT NOT NULL,
    gender ENUM('F', 'M', 'O') NOT NULL,
    phone_no VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    PRIMARY KEY(contact_id)
);

-- Create the ROOM_TYPE table
CREATE TABLE room_type (
    room_type_id INT AUTO_INCREMENT,
    type VARCHAR(20) NOT NULL,
    price DECIMAL(8,2) NOT NULL,
    capacity INT NOT NULL,
    discount DECIMAL(5,2) DEFAULT 0,
    PRIMARY KEY(room_type_id)
);

-- Create the ROOM table
CREATE TABLE room (
    room_no INT NOT NULL,
    room_type_id INT NOT NULL,
    status ENUM('Available', 'Occupied') DEFAULT 'Available',
    FOREIGN KEY (room_type_id) REFERENCES room_type (room_type_id),
    primary key(room_no)
);

-- Create the AVAILABILITY table
CREATE TABLE availability (
    availability_id INT AUTO_INCREMENT,
    room_no INT NOT NULL,
    date DATE NOT NULL,
    status ENUM('Available', 'Occupied') DEFAULT 'Available',
    UNIQUE (room_no, date),
    FOREIGN KEY (room_no) REFERENCES room (room_no),
    PRIMARY KEY(availability_id)
);

-- Create the BOOKING table
CREATE TABLE booking (
    booking_id INT AUTO_INCREMENT,
    customer_id INT NOT NULL,
    room_no INT NOT NULL,
    check_in_date DATE NOT NULL,
    check_out_date DATE NOT NULL,
    num_guests INT NOT NULL,
    reservation_status ENUM('Confirmed', 'Pending', 'Cancelled') DEFAULT 'Pending',
    FOREIGN KEY (customer_id) REFERENCES customer (customer_id),
    FOREIGN KEY (room_no) REFERENCES room (room_no),
    PRIMARY KEY(booking_id)
);

-- Create the PAYMENT table
CREATE TABLE payment (
    payment_id INT AUTO_INCREMENT,
    booking_id INT NOT NULL,
    amount DECIMAL(8,2) NOT NULL,
    payment_date DATE NOT NULL,
    payment_method ENUM('Cash', 'Credit Card', 'Debit Card', 'PayPal', 'Other') NOT NULL,
    FOREIGN KEY (booking_id) REFERENCES booking (booking_id),
    PRIMARY KEY(payment_id)
);

-- Create the STAFF table
CREATE TABLE staff (
    staff_id INT AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    gender ENUM('F', 'M', 'O') NOT NULL,
    phone_no VARCHAR(20) NOT NULL,
    email VARCHAR(50) NOT NULL UNIQUE,
    address VARCHAR(255) NOT NULL,
    position VARCHAR(50) NOT NULL,
    room_no INT NOT NULL,
    FOREIGN KEY (room_no) REFERENCES room (room_no),
    PRIMARY KEY(staff_id)
);

-- Insert sample data into the tables
INSERT INTO customer (first_name, last_name)
VALUES ('Sophea', 'Sok'),
       ('Vanna', 'Heng'),
       ('Sopheak', 'Khin'),
       ('Pisey', 'Ly'),
       ('Raksmey', 'Houn');

INSERT INTO contact (customer_id, gender, phone_no, email, address)
VALUES (1, 'F', '+855-12-345-678', 'sophea.sok@gmail.com', '#10 Street 45, Phnom Penh'),
       (2, 'M', '+855-98-765-432', 'vanna.heng@hotmail.com', '#35 Road 9, Siem Reap'),
       (3, 'F', '+855-77-888-999', 'sopheak.khin@yahoo.com', '#27 Street 30, Battambang'),
       (4, 'F', '+855-93-123-456', 'pisey.ly@gmail.com', '#51 Road 2, Kampong Cham'),
       (5, 'M', '+855-11-222-333', 'raksmey.houn@outlook.com.kh', '#12 Street 15, Kandal Province');

INSERT INTO room_type (type, price, capacity, discount)
VALUES ('Standard', 75.00, 2, 0),
       ('Deluxe', 125.00, 4, 0.05),
       ('Superior', 150.00, 4, 0.1),
       ('Suite', 200.00, 6, 0.15);

INSERT INTO room (room_no, room_type_id, status)
VALUES (101, 1, 'Occupied'),
       (102, 1, 'Available'),
       (103, 2, 'Occupied'),
       (104, 3, 'Available'),
       (105, 4, 'Available'),
       (106, 4, 'Available');

INSERT INTO availability (room_no, date, status)
VALUES (102, '2023-06-20', 'Available'),
       (104, '2023-06-19', 'Available'),
       (105, '2023-06-23', 'Occupied'),
       (101, '2023-06-21', 'Available'),
       (106, '2023-06-22', 'Available'),
       (103, '2023-06-24', 'Available');

INSERT INTO booking (customer_id, room_no, check_in_date, check_out_date, num_guests, reservation_status)
VALUES (1, 102, '2023-06-20', '2023-06-22', 2, 'Confirmed'),
       (2, 103, '2023-06-24', '2023-06-27', 3, 'Pending'),
       (3, 104, '2023-06-19', '2023-06-20', 2, 'Cancelled'),
       (4, 101, '2023-06-21', '2023-06-23', 1, 'Confirmed'),
       (5, 105, '2023-06-23', '2023-06-26', 2, 'Confirmed');

INSERT INTO payment (booking_id, amount, payment_date, payment_method)
VALUES (1, 150.00, '2023-06-20', 'Credit Card'),
       (2, 375.00, '2023-06-24', 'PayPal'),
       (4, 150.00, '2023-06-21', 'Cash'),
       (5, 300.00, '2023-06-23', 'Debit Card');

INSERT INTO staff (first_name, last_name, gender, phone_no, email, address, position, room_no)
VALUES ('Sambath', 'Lao', 'M', '+855-12-345-999', 'sambath.lao@gmail.com', '#57 Street 178, Phnom Penh', 'Housekeeping', 101),
       ('Ratha', 'Chum', 'M', '+855-98-765-777', 'ratha.chum@hotmail.com', '#29 Street 15, Siem Reap', 'Housekeeping', 102),
       ('Thida', 'Heng', 'F', '+855-77-888-666', 'thida.heng@yahoo.com', '#17 Street 3, Battambang', 'Housekeeping', 103),
       ('Vichhay', 'Chek', 'M', '+855-93-123-333', 'vichhay.chek@gmail.com', '#61 Road 2, Kampong Cham', 'Housekeeping', 104),
       ('Soriya', 'Chan', 'F', '+855-11-222-444', 'soriya.chan@outlook.com.kh', '#19 Street 22, Kandal Province', 'Housekeeping', 105);