CREATE DATABASE Project_ITC_cinema_system;
USE Project_ITC_cinema_system;

CREATE TABLE Theater(
	theaterID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    theaterName VARCHAR(60) NOT NULL,
    theaterCapacity INT,
    theaterAddress VARCHAR(70) NOT NULL,
    theaterOpenTime TIME NOT NULL,
    theaterCloseTime TIME NOT NULL
);

CREATE TABLE Movie(
	movieID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    theaterID INT NOT NULL,
    movieName VARCHAR(200) NOT NULL,
    movieType VARCHAR(300) NOT NULL,                   
    movieReleaseDate DATE NOT NULL,
    movieDuration TIME NOT NULL,
    movieRating FLOAT NOT NULL,
    movieDescription VARCHAR(400),
    FOREIGN KEY(theaterID) REFERENCES Theater(theaterID)
);

CREATE TABLE Scheduled(
	showMovieId INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    movieID INT NOT NULL,
	theaterID INT NOT NULL,
    showMovieDate DATETIME NOT NULL,
    FOREIGN KEY(theaterID) REFERENCES Theater(theaterID),
    FOREIGN KEY(movieID) REFERENCES Movie(movieID)
);

CREATE TABLE Customer(
	customerId INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    movieID INT NOT NULL,
    theaterID INT NOT NULL,
    customerName VARCHAR(50) NOT NULL,
    customerGender CHAR,
    customerAge INT NOT NULL,
    customerEmail VARCHAR(45),
    customerPhone VARCHAR(30) NOT NULL,
    FOREIGN KEY(movieID) REFERENCES Movie(movieID),
    FOREIGN KEY(theaterID) REFERENCES Theater(theaterID)
);

CREATE TABLE Ticket_booking(
	ticketID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customerID INT NOT NULL,
    theaterID INT NOT NULL,
    movieID INT NOT NULL,
    price FLOAT NOT NULL,
    FOREIGN KEY(theaterID) REFERENCES Theater(theaterID),
    FOREIGN KEY(customerID) REFERENCES Customer(customerID),
    FOREIGN KEY(movieID) REFERENCES Movie(movieID)
);

