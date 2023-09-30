CREATE DATABASE Project_ITC_Cinema_System_Formal02;
USE Project_ITC_Cinema_System_Formal02;

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

CREATE TABLE Customer(
    customerID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customerName VARCHAR(50) NOT NULL,
    customerGender CHAR,
    customerAge INT NOT NULL,
    customerEmail VARCHAR(45),
    customerPhone VARCHAR(30) NOT NULL
);

CREATE TABLE Ticket_booking(
    ticketID INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    customerID INT NOT NULL,
    showMovieID INT NOT NULL,
    price FLOAT NOT NULL,
    FOREIGN KEY(customerID) REFERENCES Customer(customerID),
    FOREIGN KEY(showMovieID) REFERENCES Scheduled(showMovieID)
);

INSERT INTO Movie (movieName, movieType, movieReleaseDate, movieDuration, movieRating, movieDescription) VALUES
	('The Avengers', 'Action', '2020-05-22', '02:30:00', 8.5, "Earth's mightiest heroes team up to save the world."),
	('Avatar', 'Sci-Fi', '2009-12-18', '02:42:00', 7.8, 'A paralyzed marine is sent to the planet Pandora on a unique mission.'),
	('Black Panther', 'Action', '2018-02-16', '02:14:00', 7.3, 'Challa, the Black Panther, rises to the throne of Wakanda.'),
	('Braveheart', 'Biography', '1995-05-24', '02:58:00', 8.3, 'The story of Scottish warrior William Wallace.'),
	('Fight Club', 'Drama', '1999-10-15', '02:19:00', 8.8, 'An insomniac office worker forms an underground fight club as a form of therapy.'),
	('Finding Nemo', 'Animation', '2003-05-30', '01:40:00', 8.1, 'A clownfish embarks on a journey to find his son.'),
	('Forrest Gump', 'Drama', '1994-07-06', '02:22:00', 8.8, 'A simple man experiences firsthand some of the key events of the latter half of the 20th century.'),
	('Frozen', 'Animation', '2013-11-27', '01:42:00', 7.5, 'A fearless princess sets off on a journey to find her estranged sister.'),
	('Gladiator', 'Action', '2000-05-05', '02:35:00', 8.5, 'A former Roman General seeks revenge in the gladiatorial arena.'),
	('Gone Girl', 'Mystery', '2014-10-03', '02:29:00', 8.1, 'A man becomes the prime suspect in his wife disappearance.'),
	('Inception', 'Sci-Fi', '2010-07-16', '02:28:00', 8.8, "A thief enters people's dreams to steal information."),
	('Inglourious Basterds', 'War', '2009-08-21', '02:33:00', 8.3, 'A group of Jewish U.S. soldiers plan to assassinate Nazi leaders in World War II.'),
	('Interstellar', 'Sci-Fi', '2014-11-07', '02:49:00', 8.6, 'A team of explorers travel through a wormhole in search of a new habitable planet.'),
	('Jurassic Park', 'Adventure', '1993-06-11', '02:07:00', 8.1, 'Scientists create a theme park with genetically engineered dinosaurs.'),
	('La La Land', 'Musical', '2016-12-09', '02:08:00', 8.0, 'A jazz pianist falls in love with an aspiring actress in Los Angeles.'),
	('Mad Max: Fury Road', 'Action', '2015-05-15', '02:00:00', 8.1, 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler.'),
	('Pulp Fiction', 'Crime', '1994-10-14', '02:34:00', 8.9, 'The lives of various characters intertwine in a world of crime and redemption.'),
	('The Bourne Identity', 'Action', '2002-06-14', '01:59:00', 7.9, 'A man is found floating in the Mediterranean Sea with no memory and a set of skills.'),
	('The Bourne Supremacy', 'Action', '2004-07-23', '01:48:00', 7.7, 'Jason Bourne is targeted by a CIA operation gone wrong.'),
	('The Bourne Ultimatum', 'Action', '2007-08-03', '01:55:00', 8.0, 'Jason Bourne seeks to uncover his past while evading government agents.'),
	('The Conjuring 2', 'Horror', '2016-06-10', '02:14:00', 7.3, 'Paranormal investigators return to help a single mother and her four children.'),
	('The Conjuring', 'Horror', '2013-07-19', '01:52:00', 7.5, 'Paranormal investigators help a family terrorized by a dark presence in their farmhouse.'),
	('The Dark Knight Rises', 'Action', '2012-07-20', '02:44:00', 8.4, 'Eight years after Batman took the fall for Two-Face\'s crimes, a new terrorist leader threatens Gotham City.'),
	('The Dark Knight', 'Action', '2008-07-18', '02:32:00', 9.0, 'Batman faces off against the Joker.'),
	('The Departed', 'Crime', '2006-10-06', '02:31:00', 8.5, 'An undercover cop and a mole in the police attempt to identify each other.'),
	('The Exorcist', 'Horror', '1973-12-26', '02:02:00', 8.0, 'A young girl is possessed by a demonic entity, and her mother seeks help from two priests.'),
	('The Fault in Our Stars', 'Romance', '2014-06-06', '02:06:00', 7.7, 'Two teenagers with cancer fall in love.'),
	('The Girl with the Dragon Tattoo', 'Crime', '2011-12-20', '02:38:00', 7.8, 'A journalist and a hacker investigate a wealthy family\'s dark secrets.'),
	('The Godfather', 'Crime', '1972-03-24', '02:55:00', 9.2, 'The aging patriarch of an organized crime dynasty transfers control to his reluctant son.'),
	('The Great Gatsby', 'Drama', '2013-05-10', '02:23:00', 7.2, 'A mysterious millionaire hosts extravagant parties in 1920s New York.'),
	('The Green Mile', 'Drama', '1999-12-10', '03:09:00', 8.6, 'A death row corrections officer witnesses supernatural events.'),
	('The Hangover Part II', 'Comedy', '2011-05-26', '01:42:00', 6.5, 'The Wolfpack finds themselves in another misadventure, this time in Bangkok.'),
	('The Hangover Part III', 'Comedy', '2013-05-23', '01:40:00', 5.8, 'The Wolfpack returns to Las Vegas for one last outrageous adventure.'),
	('The Hangover', 'Comedy', '2009-06-05', '01:40:00', 7.7, 'A group of friends search for their missing friend after a wild bachelor party in Las Vegas.'),
	('The Hobbit: An Unexpected Journey', 'Fantasy', '2012-12-14', '02:49:00', 7.8, 'Bilbo Baggins joins a quest to reclaim a dwarf kingdom from a fearsome dragon.'),
	('The Imitation Game', 'Biography', '2014-11-28', '01:54:00', 8.0, 'The story of Alan Turing, the mathematician who helped crack the Enigma code during World War II.'),
	('The Lion King', 'Animation', '1994-06-15', '01:28:00', 8.5, 'A young lion prince flees his kingdom after the murder of his father and learns the true meaning of responsibility and bravery.'),
	('The Lord of the Rings: The Fellowship of the Ring', 'Adventure', '2001-12-19', '02:58:00', 8.8, 'A group of unlikely heroes embark on a journey to destroy a powerful ring and save Middle-earth.'),
	('The Martian', 'Sci-Fi', '2015-10-02', '02:24:00', 8.0, 'An astronaut is left stranded on Mars and must find a way to survive.'),
	('The Matrix Reloaded', 'Sci-Fi', '2003-05-15', '02:18:00', 7.2, 'Neo continues his quest for the truth in a simulated reality.'),
	('The Notebook', 'Romance', '2004-06-25', '02:03:00', 7.8, 'A young couple\'s love is tested by the pressures of society and war.'),
	('The Prestige', 'Mystery', '2006-10-20', '02:10:00', 8.5, 'Two rival magicians engage in a dangerous game of one-upmanship.'),
	('The Pursuit of Happyness', 'Drama', '2006-12-15', '01:57:00', 8.0, 'A struggling salesman takes custody of his son as he embarks on a life-changing journey.'),
	('The Revenant', 'Adventure', '2015-12-25', '02:36:00', 8.0, 'A frontiersman seeks revenge after being left for dead by his hunting team.'),
	('The Shape of Water', 'Fantasy', '2017-12-01', '02:03:00', 7.3, 'A mute janitor forms a unique relationship with an amphibious creature.'),
	('The Shawshank Redemption', 'Drama', '1994-09-23', '02:22:00', 9.3, 'Two imprisoned men bond over several years, finding solace and redemption through acts of common decency.'),
	('The Shining', 'Horror', '1980-05-23', '02:26:00', 8.4, 'A family heads to an isolated hotel for the winter where an evil presence influences the father.'),
	('The Silence of the Lambs', 'Thriller', '1991-02-14', '01:58:00', 8.6, 'An FBI trainee seeks the help of a manipulative serial killer to catch another serial killer.'),
	('The Sixth Sense', 'Thriller', '1999-08-06', '01:47:00', 8.1, 'A child psychologist tries to help a young boy who claims to see ghosts.'),
	('The Social Network', 'Biography', '2010-10-01', '02:00:00', 7.7, 'The story of the creation of Facebook.'),
	('The Wolf of Wall Street', 'Biography', '2013-12-25', '03:00:00', 8.2, 'The rise and fall of a wealthy stockbroker.'),
	('Titanic', 'Romance', '1997-12-19', '03:15:00', 7.8, 'A tragic love story set aboard the RMS Titanic.'),
	('Toy Story', 'Animation', '1995-11-22', '01:21:00', 8.3, 'Toys come to life when humans are not present.')    
	;


INSERT INTO Theater (theaterID,theaterName, theaterCapacity, theaterAddress, theaterOpenTime, theaterCloseTime) VALUES 
  (1,'Sensok theater', 200, 'Oknha Triheng Street, Phnom Penh', '09:00:00', '23:00:00'),
  (2,'Rouseykeo theater', 350, '598 Chea Sophara Street, Phnom Penh', '10:30:00', '22:30:00'),
  (3,'Toulkork theater', 300, 'Russian Federation,Phnom Penh', '08:00:00', '00:00:00'),
  (4,'Stoeng meanchey theater', 180, '271 Street,Phnom Penh', '11:00:00', '23:30:00')
  ;
  

INSERT INTO Scheduled (movieID, theaterID, showMovieDate) VALUES
	(1, 3, '2023-01-06 13:00:00'),
	(1, 2, '2023-01-06 14:00:00'),
	(3, 2, '2023-01-06 16:00:00'),
	(3, 1, '2023-01-06 18:30:00'),
	(5, 3, '2023-01-06 19:00:00'),
	(8, 1, '2023-01-06 20:00:00'),
	(12, 4, '2023-01-06 22:00:00'),
	(5, 3, '2023-01-06 00:00:00'),
	(49, 2, '2023-01-07 13:00:00'),
	(25, 3, '2023-01-07 14:00:00'),
	(34, 3, '2023-01-07 16:00:00'),
	(23, 3, '2023-01-07 18:30:00'),
	(34, 2, '2023-01-07 19:00:00'),
	(27, 2, '2023-01-07 20:00:00'),
	(27, 2, '2023-01-07 23:00:00'),
	(8, 4, '2023-01-07 00:00:00'),
	(53, 4, '2023-01-08 13:00:00'),
	(23, 1, '2023-01-08 14:00:00'),
	(23, 3, '2023-01-08 16:00:00'),
	(5, 2, '2023-01-08 18:30:00'),
	(6, 4, '2023-01-08 19:00:00'),
	(7, 4, '2023-01-08 20:00:00'),
	(8, 4, '2023-01-08 23:00:00'),
	(50, 4, '2023-01-08 00:00:00'),
	(7, 3, '2023-01-09 13:00:00'),
	(45, 4, '2023-01-09 14:00:00'),
	(34, 1, '2023-01-09 16:00:00'),
	(12, 1, '2023-01-09 18:00:00'),
	(7, 2, '2023-01-09 19:00:00'),
	(8, 2, '2023-01-09 20:00:00'),
	(9, 1, '2023-01-09 23:00:00'),
	(39, 2, '2023-01-09 00:00:00'),
	(48, 2, '2023-01-10 13:00:00'),
	(3, 3, '2023-01-10 14:00:00'),
	(5, 2, '2023-01-10 16:00:00'),
	(7, 2, '2023-01-10 18:30:00'),
	(12, 2, '2023-01-10 20:00:00'),
	(34, 2, '2023-01-10 22:00:00'),
	(5, 1, '2023-01-10 23:00:00'),
	(6, 3, '2023-01-10 00:00:00'),
	(8, 1, '2023-01-11 13:00:00'),
	(52, 2, '2023-01-11 14:00:00'),
	(15, 1, '2023-01-11 16:00:00'),
	(19, 1, '2023-01-11 18:30:00'),
	(14, 4, '2023-01-10 19:00:00'),
	(43, 1, '2023-01-10 20:00:00'),
	(40, 1, '2023-01-10 23:00:00'),
	(43, 4, '2023-01-10 00:00:00'),
	(36, 2, '2023-01-12 13:00:00'),
	(53, 2, '2023-01-12 14:00:00'),
	(1, 3, '2023-01-12 16:00:00'),
	(34, 3, '2023-01-12 18:30:00'),
	(34, 1, '2023-01-12 16:00:00'),
	(34, 3, '2023-01-12 20:00:00'),
	(45, 2, '2023-01-12 23:00:00'),
	(6, 3, '2023-01-12 00:00:00')
	;

INSERT INTO Customer (customerName, customerGender, customerAge, customerEmail, customerPhone) VALUES
    ('John Doe', 'M', 25, 'john.doe@example.com', '123-456-7890'),
    ('Jane Smith', 'F', 30, 'jane.smith@example.com', '987-654-3210'),
    ('Michael Johnson', 'M', 35, 'michael.johnson@example.com', '555-555-5555'),
    ('Emily Davis', 'F', 28, 'emily.davis@example.com', '111-222-3333'),
    ('Robert Wilson', 'M', 40, 'robert.wilson@example.com', '444-444-4444'),
    ('Sarah Anderson', 'F', 32, 'sarah.anderson@example.com', '999-888-7777'),
    ('David Thompson', 'M', 29, 'david.thompson@example.com', '777-777-7777'),
    ('Jennifer Brown', 'F', 27, 'jennifer.brown@example.com', '666-666-6666'),
    ('Christopher Garcia', 'M', 31, 'christopher.garcia@example.com', '555-444-3333'),
    ('Elizabeth Martinez', 'F', 34, 'elizabeth.martinez@example.com', '222-333-4444'),
    ('Daniel Robinson', 'M', 26, 'daniel.robinson@example.com', '111-222-3333'),
    ('Jessica Clark', 'F', 29, 'jessica.clark@example.com', '999-888-7777'),
    ('Joshua Lewis', 'M', 33, 'joshua.lewis@example.com', '777-777-7777'),
    ('Megan Lee', 'F', 28, 'megan.lee@example.com', '666-666-6666'),
    ('Ryan Walker', 'M', 30, 'ryan.walker@example.com', '555-444-3333'),
    ('Stephanie Hall', 'F', 32, 'stephanie.hall@example.com', '222-333-4444'),
    ('Thomas Young', 'M', 25, 'thomas.young@example.com', '111-222-3333'),
    ('Amanda Allen', 'F', 27, 'amanda.allen@example.com', '999-888-7777'),
    ('Matthew King', 'M', 29, 'matthew.king@example.com', '777-777-7777'),
    ('Laura Hill', 'F', 31, 'laura.hill@example.com', '666-666-6666'),
    ('Kevin Wright', 'M', 34, 'kevin.wright@example.com', '555-444-3333'),
    ('Olivia Martinez', 'F', 28, 'olivia.martinez@example.com', '111-222-3333'),
    ('William Taylor', 'M', 31, 'william.taylor@example.com', '999-888-7777'),
    ('Sophia Cooper', 'F', 33, 'sophia.cooper@example.com', '777-777-7777'),
    ('Alexander Reed', 'M', 26, 'alexander.reed@example.com', '666-666-6666'),
    ('Abigail Turner', 'F', 29, 'abigail.turner@example.com', '555-444-3333'),
    ('James Parker', 'M', 32, 'james.parker@example.com', '222-333-4444'),
    ('Charlotte Murphy', 'F', 25, 'charlotte.murphy@example.com', '111-222-3333'),
    ('Benjamin Collins', 'M', 27, 'benjamin.collins@example.com', '999-888-7777'),
    ('Samantha Cox', 'F', 30, 'samantha.cox@example.com', '777-777-7777'),
    ('Henry Bennett', 'M', 28, 'henry.bennett@example.com', '666-666-6666'),
    ('Elizabeth Rivera', 'F', 31, 'elizabeth.rivera@example.com', '555-444-3333'),
    ('Joseph Reed', 'M', 33, 'joseph.reed@example.com', '222-333-4444'),
    ('Evelyn Diaz', 'F', 26, 'evelyn.diaz@example.com', '111-222-3333'),
    ('Daniel Stewart', 'M', 29, 'daniel.stewart@example.com', '999-888-7777'),
    ('Grace Simmons', 'F', 32, 'grace.simmons@example.com', '777-777-7777'),
    ('Andrew Butler', 'M', 25, 'andrew.butler@example.com', '666-666-6666'),
    ('Madison Ramirez', 'F', 27, 'madison.ramirez@example.com', '555-444-3333'),
    ('Liam Foster', 'M', 30, 'liam.foster@example.com', '222-333-4444'),
    ('Chloe Bennett', 'F', 28, 'chloe.bennett@example.com', '111-222-3333'),
    ('Mason Price', 'M', 31, 'mason.price@example.com', '999-888-7777'),
    ('Lily Henderson', 'F', 33, 'lily.henderson@example.com', '777-777-7777'),
    ('Ethan Simmons', 'M', 26, 'ethan.simmons@example.com', '666-666-6666'),
    ('Ava Howard', 'F', 29, 'ava.howard@example.com', '555-444-3333'),
    ('Noah Parker', 'M', 32, 'noah.parker@example.com', '222-333-4444'),
    ('Sophia Turner', 'F', 25, 'sophia.turner@example.com', '111-222-3333'),
    ('Jackson Murphy', 'M', 27, 'jackson.murphy@example.com', '999-888-7777'),
    ('Isabella Collins', 'F', 30, 'isabella.collins@example.com', '777-777-7777'),
    ('Aiden Bennett', 'M', 28, 'aiden.bennett@example.com', '666-666-6666'),
    ('Mia Rivera', 'F', 31, 'mia.rivera@example.com', '555-444-3333'),
    ('Lucas Reed', 'M', 33, 'lucas.reed@example.com', '222-333-4444'),
    ('Harper Diaz', 'F', 26, 'harper.diaz@example.com', '111-222-3333'),
    ('Carter Stewart', 'M', 29, 'carter.stewart@example.com', '999-888-7777'),
    ('Penelope Simmons', 'F', 32, 'penelope.simmons@example.com', '777-777-7777'),
    ('Jack Butler', 'M', 25, 'jack.butler@example.com', '666-666-6666'),
    ('Emma Ramirez', 'F', 27, 'emma.ramirez@example.com', '555-444-3333'),
    ('Owen Foster', 'M', 30, 'owen.foster@example.com', '222-333-4444'),
    ('Avery Bennett', 'F', 28, 'avery.bennett@example.com', '111-222-3333'),
    ('Wyatt Price', 'M', 31, 'wyatt.price@example.com', '999-888-7777'),
    ('Scarlett Henderson', 'F', 33, 'scarlett.henderson@example.com', '777-777-7777'),
    ('Logan Simmons', 'M', 26, 'logan.simmons@example.com', '666-666-6666'),
    ('Sofia Howard', 'F', 29, 'sofia.howard@example.com', '555-444-3333'),
    ('Sebastian Parker', 'M', 32, 'sebastian.parker@example.com', '222-333-4444'),
    ('Aria Turner', 'F', 25, 'aria.turner@example.com', '111-222-3333'),
    ('Leo Murphy', 'M', 27, 'leo.murphy@example.com', '999-888-7777'),
    ('Grace Collins', 'F', 30, 'grace.collins@example.com', '777-777-7777'),
    ('Elijah Bennett', 'M', 28, 'elijah.bennett@example.com', '666-666-6666'),
    ('Luna Adams', 'F', 31, 'luna.adams@example.com', '111-222-3333'),
    ('Eli Turner', 'M', 29, 'eli.turner@example.com', '999-888-7777'),
    ('Mila Walker', 'F', 33, 'mila.walker@example.com', '777-777-7777'),
    ('Caleb Mitchell', 'M', 26, 'caleb.mitchell@example.com', '666-666-6666'),
    ('Aria Phillips', 'F', 28, 'aria.phillips@example.com', '555-444-3333'),
    ('Michael Jenkins', 'M', 30, 'michael.jenkins@example.com', '222-333-4444'),
    ('Nora Evans', 'F', 25, 'nora.evans@example.com', '111-222-3333'),
    ('Gabriel Rivera', 'M', 27, 'gabriel.rivera@example.com', '999-888-7777'),
    ('Savannah Hughes', 'F', 32, 'savannah.hughes@example.com', '777-777-7777'),
    ('Elijah Sanchez', 'M', 26, 'elijah.sanchez@example.com', '666-666-6666'),
    ('Scarlett Gray', 'F', 29, 'scarlett.gray@example.com', '555-444-3333'),
    ('Oliver Ross', 'M', 31, 'oliver.ross@example.com', '222-333-4444'),
    ('Camila Simmons', 'F', 24, 'camila.simmons@example.com', '111-222-3333'),
    ('Matthew Thompson', 'M', 27, 'matthew.thompson@example.com', '999-888-7777'),
    ('Hazel Wright', 'F', 32, 'hazel.wright@example.com', '777-777-7777'),
    ('Henry Rodriguez', 'M', 25, 'henry.rodriguez@example.com', '666-666-6666'),
    ('Layla Parker', 'F', 28, 'layla.parker@example.com', '555-444-3333'),
    ('Wyatt Campbell', 'M', 30, 'wyatt.campbell@example.com', '222-333-4444'),
    ('Victoria Turner', 'F', 26, 'victoria.turner@example.com', '111-222-3333'),
    ('Julian Martinez', 'M', 29, 'julian.martinez@example.com', '999-888-7777'),
    ('Bella Cooper', 'F', 33, 'bella.cooper@example.com', '777-777-7777'),
    ('David Reed', 'M', 27, 'david.reed@example.com', '666-666-6666'),
    ('Avery Baker', 'F', 30, 'avery.baker@example.com', '555-444-3333'),
    ('Joseph Peterson', 'M', 31, 'joseph.peterson@example.com', '222-333-4444'),
    ('Lily Collins', 'F', 24, 'lily.collins@example.com', '111-222-3333'),
    ('Owen Turner', 'M', 27, 'owen.turner@example.com', '999-888-7777'),
    ('Sofia Cooper', 'F', 32, 'sofia.cooper@example.com', '777-777-7777'),
    ('Ethan Diaz', 'M', 25, 'ethan.diaz@example.com', '666-666-6666'),
    ('Chloe Reed', 'F', 28, 'chloe.reed@example.com', '555-444-3333'),
    ('Daniel Murphy', 'M', 30, 'daniel.murphy@example.com', '222-333-4444'),
    ('Madison Henderson', 'F', 26, 'madison.henderson@example.com', '111-222-3333'),
    ('William Simmons', 'M', 29, 'william.simmons@example.com', '999-888-7777'),
    ('Aurora Howard', 'F', 33, 'aurora.howard@example.com', '777-777-7777'),
    ('Alexander Parker', 'M', 27, 'alexander.parker@example.com', '666-666-6666'),
    ('Mila Turner', 'F', 30, 'mila.turner@example.com', '555-444-3333'),
    ('James Bell', 'M', 31, 'james.bell@example.com', '222-333-4444'),
    ('Emily Mitchell', 'F', 24, 'emily.mitchell@example.com', '111-222-3333'),
    ('Benjamin Evans', 'M', 27, 'benjamin.evans@example.com', '999-888-7777'),
    ('Aubrey Walker', 'F', 32, 'aubrey.walker@example.com', '777-777-7777'),
    ('Samuel Thompson', 'M', 25, 'samuel.thompson@example.com', '666-666-6666'),
    ('Avery Wilson', 'F', 28, 'avery.wilson@example.com', '555-444-3333'),
    ('Elizabeth Rodriguez', 'M', 30, 'elizabeth.rodriguez@example.com', '222-333-4444'),
    ('Henry Stewart', 'F', 26, 'henry.stewart@example.com', '111-222-3333'),
    ('Evelyn Parker', 'M', 29, 'evelyn.parker@example.com', '999-888-7777'),
    ('Michael Adams', 'F', 33, 'michael.adams@example.com', '777-777-7777'),
    ('Abigail Bennett', 'M', 27, 'abigail.bennett@example.com', '666-666-6666'),
    ('Daniel Cooper', 'F', 30, 'daniel.cooper@example.com', '555-444-3333'),
    ('Victoria Thompson', 'M', 31, 'victoria.thompson@example.com', '222-333-4444'),
    ('Olivia Wright', 'F', 24, 'olivia.wright@example.com', '111-222-3333'),
    ('Lucas Foster', 'M', 27, 'lucas.foster@example.com', '999-888-7777'),
    ('Emily Collins', 'F', 30, 'emily.collins@example.com', '777-777-7777'),
    ('Sebastian Bennett', 'M', 25, 'sebastian.bennett@example.com', '666-666-6666'),
    ('Scarlett Walker', 'F', 28, 'scarlett.walker@example.com', '555-444-3333'),
    ('Jackson Murphy', 'M', 31, 'jackson.murphy@example.com', '222-333-4444'),
    ('Sophia Jenkins', 'F', 24, 'sophia.jenkins@example.com', '111-222-3333'),
    ('Aiden Martinez', 'M', 27, 'aiden.martinez@example.com', '999-888-7777'),
    ('Avery Adams', 'F', 30, 'avery.adams@example.com', '777-777-7777'),
    ('Elijah Cooper', 'M', 25, 'elijah.cooper@example.com', '666-666-6666'),
    ('Charlotte Turner', 'F', 28, 'charlotte.turner@example.com', '555-444-3333'),
    ('Liam Thompson', 'M', 31, 'liam.thompson@example.com', '222-333-4444'),
    ('Amelia Henderson', 'F', 24, 'amelia.henderson@example.com', '111-222-3333'),
    ('Logan Simmons', 'M', 27, 'logan.simmons@example.com', '999-888-7777'),
    ('Harper Walker', 'F', 30, 'harper.walker@example.com', '777-777-7777'),
    ('Mason Mitchell', 'M', 25, 'mason.mitchell@example.com', '666-666-6666'),
    ('Evelyn Collins', 'F', 28, 'evelyn.collins@example.com', '555-444-3333'),
    ('Jacob Ross', 'M', 31, 'jacob.ross@example.com', '222-333-4444'),
    ('Mia Simmons', 'F', 24, 'mia.simmons@example.com', '111-222-3333'),
    ('Alexander Baker', 'M', 27, 'alexander.baker@example.com', '999-888-7777'),
    ('Grace Murphy', 'F', 30, 'grace.murphy@example.com', '777-777-7777'),
    ('Benjamin Turner', 'M', 25, 'benjamin.turner@example.com', '666-666-6666'),
    ('Aria Phillips', 'F', 28, 'aria.phillips@example.com', '555-444-3333'),
    ('Michael Jenkins', 'M', 31, 'michael.jenkins@example.com', '222-333-4444'),
    ('Nora Evans', 'F', 24, 'nora.evans@example.com', '111-222-3333'),
    ('Gabriel Rivera', 'M', 27, 'gabriel.rivera@example.com', '999-888-7777'),
    ('Lily Adams', 'F', 30, 'lily.adams@example.com', '777-777-7777'),
    ('Caleb Foster', 'M', 25, 'caleb.foster@example.com', '666-666-6666'),
    ('Ella Rodriguez', 'F', 28, 'ella.rodriguez@example.com', '555-444-3333'),
    ('Ryan Thompson', 'M', 31, 'ryan.thompson@example.com', '222-333-4444'),
    ('Aria Henderson', 'F', 24, 'aria.henderson@example.com', '111-222-3333'),
    ('Joseph Wright', 'M', 27, 'joseph.wright@example.com', '999-888-7777'),
    ('Scarlett Cooper', 'F', 30, 'scarlett.cooper@example.com', '777-777-7777'),
    ('David Foster', 'M', 25, 'david.foster@example.com', '666-666-6666'),
    ('Abigail Reed', 'F', 28, 'abigail.reed@example.com', '555-444-3333'),
    ('Matthew Murphy', 'M', 31, 'matthew.murphy@example.com', '222-333-4444'),
    ('Sofia Jenkins', 'F', 24, 'sofia.jenkins@example.com', '111-222-3333'),
    ('Ethan Adams', 'M', 27, 'ethan.adams@example.com', '999-888-7777'),
    ('Chloe Walker', 'F', 30, 'chloe.walker@example.com', '777-777-7777'),
    ('Daniel Mitchell', 'M', 25, 'daniel.mitchell@example.com', '666-666-6666'),
    ('Madison Collins', 'F', 28, 'madison.collins@example.com', '555-444-3333'),
    ('William Ross', 'M', 31, 'william.ross@example.com', '222-333-4444'),
    ('Aurora Simmons', 'F', 24, 'aurora.simmons@example.com', '111-222-3333'),
    ('Alexander Turner', 'M', 27, 'alexander.turner@example.com', '999-888-7777'),
    ('Mila Rivera', 'F', 30, 'mila.rivera@example.com', '777-777-7777'),
    ('James Phillips', 'M', 25, 'james.phillips@example.com', '666-666-6666'),
    ('Emily Evans', 'F', 28, 'emily.evans@example.com', '555-444-3333'),
    ('Benjamin Parker', 'M', 31, 'benjamin.parker@example.com', '222-333-4444'),
    ('Oliver Baker', 'M', 25, 'oliver.baker@example.com', '999-888-7777'),
    ('Sophia Walker', 'F', 30, 'sophia.walker@example.com', '777-777-7777'),
    ('Henry Jenkins', 'M', 25, 'henry.jenkins@example.com', '666-666-6666'),
    ('Ava Thompson', 'F', 28, 'ava.thompson@example.com', '555-444-3333'),
    ('William Murphy', 'M', 31, 'william.murphy@example.com', '222-333-4444'),
    ('Mila Collins', 'F', 24, 'mila.collins@example.com', '111-222-3333'),
    ('Ethan Ross', 'M', 27, 'ethan.ross@example.com', '999-888-7777'),
    ('Charlotte Turner', 'F', 30, 'charlotte.turner@example.com', '777-777-7777'),
    ('Daniel Mitchell', 'M', 25, 'daniel.mitchell@example.com', '666-666-6666'),
    ('Emily Reed', 'F', 28, 'emily.reed@example.com', '555-444-3333'),
    ('James Murphy', 'M', 31, 'james.murphy@example.com', '222-333-4444'),
    ('Aurora Jenkins', 'F', 24, 'aurora.jenkins@example.com', '111-222-3333'),
    ('Benjamin Foster', 'M', 27, 'benjamin.foster@example.com', '999-888-7777'),
    ('Mia Walker', 'F', 30, 'mia.walker@example.com', '777-777-7777'),
    ('Alexander Mitchell', 'M', 25, 'alexander.mitchell@example.com', '666-666-6666'),
    ('Evelyn Collins', 'F', 28, 'evelyn.collins@example.com', '555-444-3333'),
    ('Jacob Ross', 'M', 31, 'jacob.ross@example.com', '222-333-4444'),
    ('Sofia Simmons', 'F', 24, 'sofia.simmons@example.com', '111-222-3333'),
    ('Michael Turner', 'M', 27, 'michael.turner@example.com', '999-888-7777'),
    ('Lily Adams', 'F', 30, 'lily.adams@example.com', '777-777-7777'),
    ('Caleb Foster', 'M', 25, 'caleb.foster@example.com', '666-666-6666'),
    ('Ella Rodriguez', 'F', 28, 'ella.rodriguez@example.com', '555-444-3333'),
    ('Ryan Thompson', 'M', 31, 'ryan.thompson@example.com', '222-333-4444'),
    ('Aria Henderson', 'F', 24, 'aria.henderson@example.com', '111-222-3333'),
    ('Joseph Wright', 'M', 27, 'joseph.wright@example.com', '999-888-7777'),
    ('Scarlett Cooper', 'F', 30, 'scarlett.cooper@example.com', '777-777-7777'),
    ('David Foster', 'M', 25, 'david.foster@example.com', '666-666-6666'),
    ('Abigail Reed', 'F', 28, 'abigail.reed@example.com', '555-444-3333'),
    ('Matthew Murphy', 'M', 31, 'matthew.murphy@example.com', '222-333-4444'),
    ('Sofia Jenkins', 'F', 24, 'sofia.jenkins@example.com', '111-222-3333'),
    ('Ethan Adams', 'M', 27, 'ethan.adams@example.com', '999-888-7777'),
    ('Chloe Walker', 'F', 30, 'chloe.walker@example.com', '777-777-7777'),
    ('Daniel Mitchell', 'M', 25, 'daniel.mitchell@example.com', '666-666-6666'),
    ('Madison Collins', 'F', 28, 'madison.collins@example.com', '555-444-3333'),
    ('William Ross', 'M', 31, 'william.ross@example.com', '222-333-4444'),
    ('Aurora Simmons', 'F', 24, 'aurora.simmons@example.com', '111-222-3333'),
    ('Alexander Turner', 'M', 27, 'alexander.turner@example.com', '999-888-7777')  
   ;

INSERT INTO Ticket_booking (customerID, showMovieID, price) VALUES
	(37, 52, 10),
	(10, 19, 10),
	(16, 28, 10),
	(10, 29, 12),
	(22, 44, 10),
	(45, 31, 10),
	(78, 35, 12),
	(73, 4, 10),
	(13, 43, 11),
	(53, 56, 10),
	(114, 13, 12),
	(116, 22, 11),
	(165, 25, 11),
	(160, 25, 12),
	(134, 54, 10),
	(147, 56, 10),
	(167, 13, 11),
	(189, 14, 12),
	(129, 20, 10),
	(18, 23, 10),
	(18, 40, 12),
	(19, 1, 10),
	(200, 26, 10),
	(197, 33, 12),
	(190, 7, 11),
	(180, 7, 11),
	(2, 27, 10),
	(21, 43, 10),
	(23, 26, 11),
	(25, 13, 10),
	(70, 2, 10),
	(76, 24, 12),
	(57, 41, 11),
	(24, 41, 12),
	(30, 10, 10),
	(79, 15, 10),
	(36, 15, 12),
	(38, 21, 11),
	(39, 48, 10),
	(31, 10, 11),
	(27, 10, 11),
	(17, 11, 12),
	(31, 12, 10),
	(59, 5, 10),
	(15, 19, 11),
	(79, 28, 10),
	(46, 30, 12),
	(33, 39, 12),
	(33, 47, 10),
	(54, 6, 10),
	(37, 19, 10),
	(76, 52, 10),
	(70, 56, 12),
	(38, 34, 10),
	(39, 16, 11),
	(94, 26, 10),
	(96, 3, 11),
	(39, 36, 10),
	(88, 41, 10),
	(42, 12, 10),
	(72, 12, 10),
	(62, 14, 12),
	(42, 50, 10),
	(24, 7, 10),
	(47, 15, 12),
	(45, 22, 10),
	(55, 22, 12),
	(41, 26, 9),
	(123, 35, 10),
	(145, 52, 11),
	(146, 17, 10),
	(132, 51, 10),
	(146, 51, 12),
	(187, 23, 15),
	(136, 17, 10),
	(168, 39, 10),
	(198, 52, 10),
	(48, 50, 11),
	(118, 13, 11),
	(188, 17, 12),
	(50, 50, 10),
	(150, 20, 12),
	(100, 51, 9),
	(160, 27, 11),
	(127, 18, 10),
	(155, 55, 9),
	(135, 33, 9),
	(185, 44, 12),
	(195, 9, 12),
	(15, 9, 9),
	(156, 24, 11),
	(57, 42, 10),
	(58, 9, 12),
	(69, 3, 12),
	(60, 36, 10),
	(160, 36, 11),
	(60, 13, 12),
	(120, 42, 12),
	(160, 21, 10),
	(162, 25, 11),
	(132, 27, 12),
	(62, 27, 9),
	(132, 28, 9),
	(112, 9, 9),
	(143, 13, 12),
	(164, 4, 10),
	(200, 26, 12),
	(168, 45, 10),
	(68, 19, 10),
	(188, 18, 11),
	(148, 25, 12),
	(7, 40, 9),
	(27, 17, 10),
	(37, 53, 10),
	(47, 53, 12),
	(57, 46, 9),
	(70, 32, 10),
	(71, 38, 10),
	(171, 41, 9),
	(129, 47, 9),
	(200, 21, 12),
	(41, 11, 9),
	(62, 16, 12),
	(174, 14, 9),
	(37, 39, 10),
	(74, 39, 12),
	(174, 50, 11),
	(84, 20, 9),
	(36, 14, 12),
	(77, 15, 10),
	(38, 37, 12),
	(69, 19, 9),
	(79, 31, 10),
	(19, 41, 12)
;