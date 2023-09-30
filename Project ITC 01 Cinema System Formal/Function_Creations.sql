CREATE DATABASE Project_ITC_Cinema_System_Formal;
USE Project_ITC_Cinema_System_Formal;

CREATE TABLE Movie(
    movieID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    movieName VARCHAR(200) NOT NULL,
    movieType VARCHAR(300) NOT NULL,                   
    movieReleaseDate DATE NOT NULL,
    movieDuration TIME NOT NULL,
    movieRating FLOAT NOT NULL,
    movieDescription VARCHAR(400)
);

CREATE TABLE Theater(
    theaterID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    theaterName VARCHAR(60) NOT NULL,
    theaterCapacity INT,
    theaterAddress VARCHAR(70) NOT NULL,
    theaterOpenTime TIME NOT NULL,
    theaterCloseTime TIME NOT NULL
);

CREATE TABLE Scheduled(
    showMovieID INT AUTO_INCREMENT PRIMARY KEY NOT NULL, 
    movieID INT NOT NULL,
    theaterID INT NOT NULL,
    showMovieDate DATETIME NOT NULL,
    FOREIGN KEY(theaterID) REFERENCES Theater(theaterID),
    FOREIGN KEY(movieID) REFERENCES Movie(movieID)
);

CREATE TABLE Ticket_booking(
    ticketID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customerID INT NOT NULL,
    showMovieID INT NOT NULL,
    price FLOAT NOT NULL,
    FOREIGN KEY(customerID) REFERENCES Customer(customerID),
    FOREIGN KEY(showMovieID) REFERENCES Scheduled(showMovieID)
);

CREATE TABLE Customer(
    customerID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customerName VARCHAR(50) NOT NULL,
    customerGender CHAR,
    customerAge INT NOT NULL,
    customerEmail VARCHAR(45),
    customerPhone VARCHAR(30) NOT NULL
);

