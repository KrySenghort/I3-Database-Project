CREATE DATABASE computer_shop;
USE computer_shop;

CREATE TABLE Customer (
  customerID INT PRIMARY KEY,
  customerName VARCHAR(255) NOT NULL,
  gender VARCHAR(1),
  dob DATE,
  address VARCHAR(255) NOT NULL,
  phoneNumber VARCHAR(20) NOT NULL,
  email VARCHAR(255)
);

INSERT INTO Customer (customerID, customerName, gender, dob, address, phoneNumber, email) VALUES
  (1, 'John Doe', 'M', '1990-05-10', '123 Main St', '555-1234', 'johndoe@example.com'),
  (2, 'Jane Smith', 'F', '1988-09-22', '456 Oak Ave', '555-5678', 'janesmith@example.com'),
  (3, 'Michael Johnson', 'M', '1985-12-03', '789 Elm St', '555-9012', 'michaeljohnson@example.com'),
  (4, 'Sarah Wilson', 'F', '1992-07-18', '321 Maple Ave', '555-3456', 'sarahwilson@example.com'),
  (5, 'David Davis', 'M', '1987-02-27', '654 Pine St', '555-7890', 'daviddavis@example.com'),
  (6, 'Emily Brown', 'F', '1994-11-14', '987 Cedar Ave', '555-2345', 'emilybrown@example.com'),
  (7, 'Robert Jones', 'M', '1983-08-07', '210 Walnut St', '555-6789', 'robertjones@example.com'),
  (8, 'Laura Miller', 'F', '1991-04-29', '543 Birch Ave', '555-0123', 'lauramiller@example.com'),
  (9, 'Andrew Taylor', 'M', '1989-01-12', '876 Oak St', '555-4567', 'andrewtaylor@example.com'),
  (10, 'Jennifer Anderson', 'F', '1993-06-05', '135 Pine Ave', '555-8901', 'jenniferanderson@example.com');


CREATE TABLE product_brand (
  id INT PRIMARY KEY AUTO_INCREMENT,
  brand VARCHAR(255) UNIQUE NOT NULL
);

INSERT INTO product_brand (id, brand) VALUES
  (1,'Acer'),
  (2,'Dell'),
  (3,'Lenovo'),
  (4,'HP'),
  (5,'Asus'),
  (6,'Epson'),
  (7,'Seagate'),
  (8,'Logitech'),
  (9, 'TP-Link');

CREATE TABLE Product (
  productID INT PRIMARY KEY NOT NULL,
  quantity INT NOT NULL,
  productBrand VARCHAR(255) NOT NULL,
  productModel VARCHAR(255) NOT NULL,
  productCategory VARCHAR(255) NOT NULL,
  costPrice DECIMAL(10, 2) NOT NULL,
  sellPrice DECIMAL(10, 2) NOT NULL,
  productDescription VARCHAR(255) NOT NULL
);

INSERT INTO Product (productID, quantity, productBrand, productModel, productCategory, costPrice, sellPrice, productDescription) VALUES
  (1, 10, 'Acer', 'AcerHN31', 'Laptop', 10.00, 20.55, 'Standard keyboard with USB connectivity'),
  (2, 5, 'Dell', 'DellOP987F', 'Mouse', 5.00, 10.99, 'Optical mouse with 3 buttons'),
  (3, 20, 'Lenovo', 'LenovoFH098', 'Monitor', 100.89, 200.00, 'Full HD 24-inch monitor'),
  (4, 15, 'HP', 'HPIK08', 'Headphones', 20.00, 40.99, 'Wired headphones with noise cancellation'),
  (5, 8, 'Asus', 'AsusGF23', 'Laptop', 500.00, 1000.00, '15-inch laptop with Intel Core i5 processor'),
  (6, 12, 'Epson', 'EpsonRF324', 'Printer', 100.00, 200.00, 'All-in-one printer with wireless printing'),
  (7, 3, 'Seagate', 'SeagateTY34F', 'External Hard Drive', 50.00, 100.00, '1TB USB 3.0 external hard drive'),
  (8, 6, 'Logitech', 'LogitechPPO09', 'Speakers', 30.00, 60.00, '2.1 channel multimedia speakers'),
  (9, 7, 'Logitech', 'LogitechFV23', 'Webcam', 25.00, 50.00, 'HD webcam with built-in microphone'),
  (10, 4, 'TP-Link', 'TPLinkEG234', 'Router', 40.00, 80.00, 'Dual-band Wi-Fi router with four LAN ports');

CREATE TABLE Employee (
  employeeID INT PRIMARY KEY NOT NULL,
  dob DATE NOT NULL,
  employeeName VARCHAR(255) NOT NULL,
  gender VARCHAR(1) NOT NULL,
  hiredDate DATE NOT NULL,
  salary DECIMAL(10, 2) NOT NULL
);

INSERT INTO Employee (employeeID, employeeName, dob, gender, hiredDate, salary) VALUES
  (1, 'Mark Johnson', '1991-05-15','M', '2020-01-15', 5000.00),
  (2, 'Emily Davis', '1982-05-15','F', '2020-03-20', 4500.00),
  (3, 'Michael Smith', '1950-07-15','M', '2020-05-10', 5500.00),
  (4, 'Sarah Wilson', '1990-05-15','F', '2020-02-05', 4800.00),
  (5, 'David Anderson', '1980-05-15', 'M', '2020-04-18', 5200.00),
  (6, 'Laura Taylor', '1986-05-15', 'F', '2020-06-30', 4700.00),
  (7, 'John Brown', '1999-08-05', 'M', '2020-08-22', 5300.00),
  (8, 'Jessica Miller', '1980-09-14', 'F', '2020-07-12', 4900.00),
  (9, 'Robert Davis', '1970-05-19', 'M', '2020-09-05', 5100.00),
  (10, 'Amy Johnson', '1984-05-25', 'F', '2020-11-08', 4600.00);


CREATE TABLE Receipt (
  receiptID INT PRIMARY KEY AUTO_INCREMENT,
  buy_date_time DATETIME,
  type_of_purchase VARCHAR(255),
  quantityBought INT,
  customerID INT,
  productID INT,
  employeeID INT,
  FOREIGN KEY (customerID) REFERENCES Customer(customerID),
  FOREIGN KEY (productID) REFERENCES Product(productID),
  FOREIGN KEY (employeeID) REFERENCES Employee(employeeID)
);

INSERT INTO Receipt (buy_date_time, type_of_purchase, quantityBought, customerID, productID, employeeID) VALUES
  ('2023-01-01 08:30:10', 'Online', 2, 1, 3, 5),
  ('2023-02-03 15:45:03', 'In-store', 1, 2, 1, 3),
  ('2023-03-15 11:20:40', 'Online', 3, 4, 6, 2),
  ('2023-04-20 09:10:34', 'In-store', 1, 3, 4, 7),
  ('2023-05-10 14:55:09', 'Online', 2, 5, 8, 4),
  ('2023-06-02 17:40:20', 'In-store', 4, 6, 2, 9),
  ('2023-07-07 13:25:10', 'Online', 1, 7, 10, 6),
  ('2023-08-12 10:15:00', 'In-store', 2, 9, 7, 8),
  ('2023-09-22 12:50:04', 'Online', 3, 8, 5, 1),
  ('2023-10-30 16:05:32', 'In-store', 1, 10, 9, 3);
