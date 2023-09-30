create database library03;
use library03;

CREATE TABLE Student_information(
    StudentID VARCHAR(512) PRIMARY KEY,
    Studentname VARCHAR(512),
    Dateofbirth VARCHAR(512),
    Gender  VARCHAR(512),
    Phonenumber VARCHAR(512),
    Department VARCHAR(512)
);

CREATE TABLE Book_information(
    BookID	VARCHAR(512) PRIMARY KEY,
    BookTitle VARCHAR(512),
    Languages VARCHAR(512),
    Category VARCHAR(512),
    Author	VARCHAR(512),
    ReleaseDATE INT,
    StockingDate	VARCHAR(512),
    Among	INT
);

CREATE TABLE Staff_information(
    staffID	VARCHAR(512) PRIMARY KEY,
    staffName	VARCHAR(512),
    Dateofbrid 	VARCHAR(512),
    gender	VARCHAR(512),
    phonenumber	VARCHAR(512),
    Email	VARCHAR(512)
);

CREATE TABLE Borrowing_information(
    BorrowingID	VARCHAR(512) PRIMARY KEY,
    BookID	VARCHAR(512),
    studentID VARCHAR(512),
    staffID	VARCHAR(512),
    BorrowedDate VARCHAR(512),
    returnDate VARCHAR(512),
    Among	VARCHAR(512),
    FOREIGN KEY (BookID) REFERENCES Book_information(BookID),
	FOREIGN KEY (studentID) REFERENCES Student_information(studentID),
	FOREIGN KEY (staffID) REFERENCES Staff_information(staffID)
);

INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P0123', 'B0381', 'S0001', 'A001', 'March 5, 2023', 'March 12,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P7464', 'B0427', 'S0034', 'A002', 'Feburary 28, 2023', 'March 4,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P4653', 'B0564', 'S0426', 'A002', 'January 4, 2023', 'January 12,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P0098', 'B0453', 'S2463', 'A002', 'June 23,2022', 'June 30,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P1234', 'B0782', 'S0072', 'A001', 'March 5, 2023', 'March 12,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P5346', 'B0023', 'S0045', 'A001', 'May 23,2023', 'May 30,2023', '2');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P0076', 'B0234', 'S0987', 'A002', 'December 31,2022', 'January 07,2022', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P9876', 'B0078', 'S0023', 'A001', 'December 20,2022', 'December 27,2022', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P3425', 'B0099', 'S0042', 'A002', 'April 9,2023', 'April 16,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P0924', 'B0675', 'S0167', 'A001', 'August 5, 2023', 'August 12,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P6342', 'B0234', 'S0073', 'A001', 'May 23,2023', 'May 30,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P2634', 'B0902', 'S0106', 'A001', 'November 24,2022', 'November 31,2022', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P7645', 'B0092', 'S0804', 'A002', 'November 4,2022', 'November 11,2022', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P7652', 'B0012', 'S0342', 'A001', 'May 19,2023', 'May 26,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P9712', 'B0089', 'S9400', 'A002', 'October 18,2022', 'October 25,2022', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P9824', 'B0903', 'S0234', 'A002', 'Feburary 28, 2023', 'March 4,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P8735', 'B0026', 'S0940', 'A001', 'June 23,2022', 'June 30,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P4019', 'B4002', 'S0920', 'A002', 'April 9,2022', 'April 16,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P0001', 'B0223', 'S0903', 'A001', 'June 23,2022', 'June 30,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P0082', 'B0066', 'S0094', 'A001', 'May 19,2023', 'May 26,2023', '1');
INSERT INTO Borrowing_information (BorrowingID, BookID, studentID , staffID, BorrowedDate, returnDate, Among) VALUES ('P7252', 'B0843', 'S4309', 'A001', 'December 31,2022', 'January 12,2023', '1');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0001', 'Anna King', 'May 12, 1999', 'F', '96 436 7887', 'AMS');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0034', 'Terry Rodriguez', 'March 2,2002', 'M', '97 345 673', 'GIC');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0426', 'Louis Price', 'December 2, 2003', 'M', '96 244 1214', 'GEE');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S2463', 'Sok sreysee', 'December 8, 2003', 'F', '96 233 2435', 'AMS');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0072', 'Thy nary', 'July 5, 2003', 'F', '97 324 4349', 'GGG');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0045', 'Ly sreyneang', 'November 30,2000', 'F', '96 352 2334', 'AMS');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0987', 'Phy kanha', 'Janurary 12,1999', 'F', '96 233 2342', 'GCA');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0023', 'Rath sreynin', 'May 20,2002', 'F', '96 234 4522', 'GCI');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0042', 'Som sreynit', 'june 29,2003', 'F', '96 231 2354', 'GGG');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0167', 'kim sombo', 'Febaury 10,2003', 'M', '96 324 8924', 'GIC');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0073', 'Pov ratha', 'July 5, 2003', 'M', '96 246 6531', 'GGG');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0106', 'Chan phanny', 'October 30,2000 ', 'M', '96 234 3562', 'GCA');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0804', 'Ly tola', 'April 25,1999', 'M', '96 245 2341', 'GCI');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0342', 'Ei sopheak', 'May 20,2000', 'M', '96 241 3532', 'GAR');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0843', 'Toch sreypov', 'November 29,2000', 'F', '96 342 3442', 'GGG');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S4372', 'Phy sreyvin', 'Janurary 22,2004', 'F', '96 233 2903', 'GIM');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S3409', 'Ly davit', 'Febaury 30,2002', 'M', '96 231 5422', 'GIM');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0094', 'Van ravin', 'May 18,2004', 'M', '96 123 4309', 'AMS');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0903', 'Nun virath', 'June 13,2003', 'M', '96 232 4645', 'GGG');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0924', 'Thou kimkemg', 'December 31,2003', 'M', '96 234 0934', 'GEE');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0902', 'Chan verleak', 'March 2,2002', 'F', '96 231 2394', 'GCA');
INSERT INTO Student_information (StudentID , Studentname, Dateofbirth, Gender , Phonenumber, Department) VALUES ('S0940', 'Na sreynit', 'Feburary 25, 2000', 'F', '96 340 0989', 'GCI');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0381', 'Moby Dick', 'English', 'Classic', 'Herman Melville', '2010', 'May 3,2010', '5');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0427', 'The Alchemist', 'English', 'Fantasy', 'Poulo Coelho', '2003', 'December 9,2009', '3');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0564', 'War and Peace', 'Khmer', 'History', 'Set Mongkol', '1987', 'November 18,2006', '6');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0453', 'Forgotten Mysteries of the Sun Goddess', 'English', 'Fantasy', 'Lewis Bradiey', '1975', 'April 5, 2012', '5');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0782', 'Symbols Strength of the Religions', 'English', 'Literary', 'Ben Pucker', '2008', 'june 30,2015', '4');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0023', 'Relics Strength of the Deities', 'English', 'History', 'Allen Sanchez', '1961', 'October 3,2018', '7');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0234', 'Fables of the weatern realms', 'English', 'Romance', 'Alex Yang', '2007', 'May 31,2015', '5');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0078', 'Veiled Conjuration Mysteries', 'English', 'Literary', 'Jennifer Brantley', '1990', 'Junly 17,2010', '3');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0099', 'Guide to Herballsm', 'English', 'Religious', 'Doris Bunn', '2006', 'October 3,2018', '10');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0675', 'Sacred Legends of the Moon Faith', 'English', 'Classic', 'Jonathan Link', '1979', 'December 9,2009', '8');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0234', 'Trade of Chaos lands', 'English', 'Religious', 'Allan Nguyen', '2004', 'December 9,2009', '5');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0902', 'Obscure Warriors of the Trols', 'English', 'Religious', 'Shawn Stephens', '1976', 'May 31,2015', '4');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0092', 'Forbidden Evocation Strictures', 'English', 'Action and Adventure', 'Stephanie Home', '1956', 'October 3,2018', '5');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B0012', 'Obsure Nobles of the Eastern kingdoms', 'English', 'Literary', 'Carol Burton', '1979', 'June 30,2015', '8');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B2389', 'An illustrated Life: Drawing inspirtion', 'English', ' Short stories', 'Danny Gregory', '1991', 'February  2,1999', '3');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B2021', 'An Inntroduction to Sociolinguistics', 'English', 'Science fiction', 'Ranaid Wardhaugh', '1978', 'October 16,2002', '2');
INSERT INTO Book_information (BookID, BookTitle, Languages, Category, Author, ReleaseDate, StockingDate, Among) VALUES ('B2435', 'Book Knight (Richard Jackson Book)', 'English', 'Mystery', 'Lisa Wheeler', '1957', 'November 31,2006', '4');
INSERT INTO Staff_information (staffID, staffName, Dateofbrid , gender, phonenumber, Email) VALUES ('A001', 'Thou chanmakara', 'May 24, 2000', 'F', '96 897 4547', 'chabmakara099@gmail.com');
INSERT INTO Staff_information (staffID, staffName, Dateofbrid , gender, phonenumber, Email) VALUES ('A002', 'Seng Somonthavrath', 'June 1, 1998', 'F', '96 234 2434', 'somonthavarath34@gmail.com');