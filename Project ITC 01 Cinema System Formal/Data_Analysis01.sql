USE project_itc_cinema_system_formal02;
# ==================================================================================================
# ================================ I.) Theater Analysis : ==========================================
SELECT * FROM theater;
# a.) show theater where capacity = 350
SELECT * FROM theater where theaterCapacity = 350;
# b.) show theater where capactity between 150 to 200
SELECT * FROM theater where theaterCapacity >= 150 and theaterCapacity <= 200;
# c.) show theater where capacity between 200 to 400
SELECT * FROM theater where theaterCapacity >= 200 and theaterCapacity <= 400;
# d.) show theater where theaterAddress = '271 Street,Phnom Penh'
SELECT * FROM theater where theaterAddress = '271 Street,Phnom Penh';
# e.) show theater info where theater 01 
SELECT * FROM theater where theaterID = 1 or theaterID = 2;
# f.) show theater info where theaterOpenTime between 07:00am and 09:00am
SELECT * FROM theater where theaterOpenTime BETWEEN '07:00:00' AND '9:00:00';
# g.) show theater info where theaterOpenTime between 9:00am and 11:00am
SELECT * FROM theater where theaterOpenTime >= '09:00:00' AND theaterOpenTime <= '11:00:00';
# h.) show theaterOpenTime for each theater
SELECT theaterOpenTime FROM theater;
# i.) show theaterCloseTime for each theater
SELECT theaterCloseTime FROM theater;
# j. show closeTime and openTime 
SELECT theaterOpenTime,theaterCloseTime FROM theater;
# k.) show each theaterName
SELECT theaterName FROM theater; 
# j.) show theaterAddress 
SELECT theaterAddress FROM theater;
# k.) show name, address and capacity of each theater
SELECT theaterName, theaterAddress, theaterCapacity FROM theater;
# l.) count number of theater and show
SELECT COUNT(*) as number_of_theater FROM theater;
# m.) count number of theaterID and show
SELECT COUNT(theaterID) as number_of_theater FROM theater;
# n.) show theater info where maximized capacity
SELECT MAX(theaterCapacity) as max_quantity FROM theater;
SELECT * FROM theater where theaterCapacity = (SELECT MAX(theaterCapacity) FROM theater);
SELECT * FROM theater where theaterCapacity >= All(SELECT theaterCapacity FROM theater);
# 0.) show theater info where minimized capacity
SELECT * FROM theater where theaterCapacity = (SELECT MIN(theaterCapacity) FROM theater);
SELECT * FROM theater where theaterCapacity <= All(SELECT theaterCapacity FROM theater);
# p.) show the average capacity of theater
SELECT AVG(theaterCapacity) as average_capacity FROM theater;
# q.) show theater info where latest OpenTime 
SELECT * FROM theater where theaterOpenTime = (SELECT MAX(theaterOpenTime) FROM theater);
# r.) show theater info where previously first OpenTime
SELECT * FROM theater where theaterOpenTime = (SELECT MIN(theaterOpenTime) FROM theater);
# s.) show theater info where previously first CloseTime
SELECT * FROM theater where theaterCloseTime = (SELECT MIN(theaterCloseTime) FROM theater);
# t.) show theater info where latest OpenTime
SELECT * FROM theater where theaterCloseTime = (SELECT MAX(theaterCloseTime) FROM theater);

# =================================================================================================
# ================================ II.) Movie Analysis : ==========================================
SELECT * FROM movie;
# a.) show movie info where id = [1,2,3,4,5,6,7,8,9,10]
SELECT * FROM movie where movieID IN (1,2,3,4,5,6,7,8,9,10);
# b.) show movie info where movieName = 'The Avengers'
SELECT * FROM movie where movieName = 'The Avengers';
# c.) show all of movieName
SELECT DISTINCT movieName FROM movie;
# d.) show all of movieType
SELECT DISTINCT movieType FROM movie;

# e.) show all of movieName with type grup by movieType.
SELECT movieName, movieType FROM Movie
	WHERE movieType IN (
		SELECT movieType FROM Movie
			GROUP BY movieType
				HAVING COUNT(movieType) > 1
	);
  
# f.) show the movie info where movieType = 'Action' and count number of Action movie
SELECT * FROM movie where movieType = 'Action';
SELECT COUNT(*) AS number_of_action_movie FROM movie 
	where movieType = 'Action';
    
# g.) show duplicate movie
SELECT movieType, COUNT(movieType) as num_movieType_duplicate FROM movie 
	GROUP BY movieType HAVING COUNT(movieType) > 1;
    
# h.) show duplicate type 
SELECT movieName, COUNT(movieName) as num_movieName_duplicate FROM movie 
	GROUP BY movieName HAVING COUNT(*) > 1;
    
# i.) show movie info where minimized number of movieType or unique type
SELECT movieName, movieType, movieDescription FROM Movie
	WHERE movieType IN (
		SELECT movieType FROM Movie
			GROUP BY movieType
				HAVING COUNT(movieType) = 1
	);
    
 # j) show movie info where minimized number of movieName or unique Name
SELECT DISTINCT movieName,movieType movieDescription FROM Movie;   
 
# k.) show the lowest rating movie
SELECT DISTINCT movieName,movieType,movieRating FROM movie where movieRating = (SELECT min(movieRating) FROM movie); 

# l.) show the highest rating movie
SELECT DISTINCT movieName,movieType,movieRating FROM movie where movieRating = (SELECT max(movieRating) FROM movie); 
SELECT DISTINCT movieRating from movie;

# m.) show movie info where releaseDate before, equal and after 2000
SELECT * FROM movie where year(movieReleaseDate) > 2000;
SELECT COUNT(*) FROM movie where year(movieReleaseDate) > 2000;
select * from movie where year(movieReleaseDate) <= all(select year(movieReleaseDate) from movie);

# release date = 2000 and count occurring time
SELECT * FROM movie where year(movieReleaseDate) = 2000;

# release date before 2000 and count occurring time
SELECT * FROM movie where year(movieReleaseDate) < 2000;
SELECT COUNT(*) FROM movie where year(movieReleaseDate) < 2000;

# n.) show movie info where shortest duration 
SELECT * FROM movie where movieDuration = (SELECT MIN(movieDuration) FROM movie);
# o.)show movie info where longest duration
SELECT * FROM movie where movieDuration = (SELECT MAX(movieDuration) FROM movie);
# p.) show movie info where shortest length description
SELECT * FROM movie where length(movieDescription) = (SELECT min(length(movieDescription)) FROM movie); 
# q.) show movie info where longest length description
SELECT * FROM movie where length(movieDescription) = (SELECT max(length(movieDescription)) FROM movie); 
# s. show movie info where movieDuration >= 2h
SELECT * FROM movie where movieDuration >= '02:00:00';
SELECT COUNT(*) AS num_occurring FROM movie where movieDuration >= '02:00:00';
# t. show movie info where movieDuration >= 1h but <= 2h
SELECT * FROM movie where movieDuration  BETWEEN '01:00:00' and '02:00:00';
SELECT COUNT(*) AS num_occurring FROM movie where movieDuration  BETWEEN '01:00:00' and '02:00:00';
# u. show movie info where year(movieReleaseDate) = 2017
SELECT * FROM movie where movieReleaseDate >= '2017:01:01' and movieReleaseDate <= '2017:12:31';
SELECT count(*) as number FROM movie where movieReleaseDate >= '2017:01:01' and movieReleaseDate <= '2017:12:31';
# v. show movie info where year(movieReleaseDate) = 2010
SELECT * FROM movie WHERE YEAR(movieReleaseDate) = 2010;
SELECT COUNT(*) FROM movie WHERE YEAR(movieReleaseDate) = 2010;
# w. show movie info where year(movieReleaseDate) = 2012
SELECT * FROM movie where year(movieReleaseDate) = 2012;
SELECT COUNT(*) FROM movie where year(movieReleaseDate) = 2012;
# x. show movie info where month(movieReleaseDate) = 2 or month = Febraury
SELECT * FROM movie where month(movieReleaseDate) = 2;
# y. show movie info where month(movieReleaseDate) = 1 and year(movieReleaseDate) = 2010
SELECT * FROM movie where month(movieReleaseDate) = 2 and year(movieReleaseDate) = 2018;
# z. show movie info where day(movieReleaseDate) = 16
SELECT * FROM movie where day(movieReleaseDate) = 16;
# aa. show movies info where average rating 
SELECT * FROM movie where movieRating >= 5 and movieRating < 6; 
# bb. show movie info where rating between 5 to 8
SELECT * FROM movie where movieRating between 5 and 8;
# cc. show movie info in which type of comedia 
SELECT * FROM movie where movieType = 'Comedy';
# dd. show movie info in which type of romance 
SELECT * FROM movie where movieType = 'Drama';
select movieType FROM movie;
# ======================================================================================================
# ================================ III.) Scheduled Analysis : ==========================================
SELECT * FROM Scheduled;
use project_itc_cinema_system_formal02;
# a.) show the movieID with number of time of playing.
SELECT movieID, COUNT(*) as num_playing FROM scheduled
	GROUP BY movieID HAVING COUNT(*);
    
# b.) show the number of time playing and provide movieName and movieType
SELECT movieName,movieType,COUNT(*) as num_playing 
	FROM scheduled s INNER JOIN movie m
		ON s.movieID = m.movieID 
			GROUP BY m.movieName,m.movieType;

# c) show the number of time playing based on movieID and provide movieID,Name and Type
SELECT m.movieID, m.movieName, m.movieType, COUNT(*) AS num_playing
	FROM scheduled s
		INNER JOIN movie m ON s.movieID = m.movieID
			GROUP BY m.movieID, m.movieName, m.movieType;  

# d) show the number of movie playing in each theater from scheduled  
SELECT theaterID, COUNT(*) as num_movie_playing FROM scheduled 
	GROUP BY theaterID HAVING COUNT(*);
    
# e.) show the number of each movie playing in each theater
SELECT t.theaterName, m.movieName, COUNT(*) as num_playing FROM Scheduled s
	JOIN Theater t ON s.theaterID = t.theaterID
	JOIN Movie m ON s.movieID = m.movieID
		GROUP BY t.theaterName, m.movieName;

# f.) show the number of each theater playing for each of movie
SELECT m.movieName, t.theaterName, COUNT(*) as num_playing FROM Scheduled s
	JOIN Movie m ON s.movieID = m.movieID
	JOIN Theater t ON s.theaterID = t.theaterID
		GROUP BY m.movieName, t.theaterName;

# g.) show the movie info where playing at 13:00:00
SELECT DISTINCT m.* 
	FROM movie m JOIN scheduled s 
		ON m.movieID = s.movieID
			WHERE TIME(s.showMovieDate) = '13:00:00';

# g.) show the movie info where playing at 14:00:00
SELECT DISTINCT m.*, t.theaterName FROM movie m
	JOIN scheduled s ON m.movieID = s.movieID
		JOIN theater t ON s.theaterID = t.theaterID
			WHERE TIME(s.showMovieDate) = '14:00:00';

# =========================================================================================================================================
# ================================= Customer Analysis =====================================================================================
# show the customer whose gender is male 
select * from customer where customerGender = 'M';

# show the customer whose gender is female 
select * from customer where customerGender = 'F';

# show customer info whose age >= 18
select * from customer where customerAge >= 18;

# select customer info whose age >= 18 and gender = male
select * from customer where customerAge >= 18 and customerGender = 'M';

# select customer info whose age >= 18 and gender = female
select * from customer where customerAge >= 18 and customerGender = 'F';

# =========================================================================================================================================
# ================================================== Ticket Analysis ======================================================================
select * from ticket_booking;

# show the ticket which cost 10$
select * from ticket_booking where price = 10;

# show the all of unique price content of ticket
select distinct price from ticket_booking;

# show the ticket info which cost 15$
select * from ticket_booking where price = 15;

# show the movieName, thaterName where ticket cost 10$
SELECT m.movieName, t.theaterName FROM movie m
	JOIN scheduled s ON m.movieID = s.movieID
	JOIN theater t ON t.theaterID = s.theaterID
	JOIN ticket_booking tb ON tb.showMovieID = s.showMovieID
		WHERE tb.price = 10;

# show the movieName,movieType,movieReleaseDate, thaterName and showMovieDate where ticket cost 15$
SELECT m.movieName,m.movieType,m.movieReleaseDate, t.theaterName,s.showMovieDate FROM movie m
	JOIN scheduled s ON m.movieID = s.movieID
	JOIN theater t ON t.theaterID = s.theaterID
	JOIN ticket_booking tb ON tb.showMovieID = s.showMovieID
		WHERE tb.price = 15;

# show the movieName,movieType,TheaterName and showMovieDate where ticket price = 10$ and year(ReleaseDate) > 2000 
# and theaterName = 'Rouseykeo'
SELECT m.movieName, m.movieType, t.theaterName, s.showMovieDate FROM movie m
	JOIN scheduled s ON m.movieID = s.movieID
	JOIN theater t ON t.theaterID = s.theaterID
	JOIN ticket_booking tb ON tb.showMovieID = s.showMovieID
		WHERE tb.price = 10 AND YEAR(m.movieReleaseDate) > 2000;

# show the movieName,movieType,theaterName,customerName where customerGender = 'M' visiting and ticket_price = 10$
SELECT c.customerName,m.movieName,m.movieType,t.theaterName,s.showMovieDate from movie m 
	join scheduled s on m.movieID = s.movieID
    join theater t on t.theaterID = s.theaterID
    join ticket_booking tb on tb.showMovieID = s.showMovieID 
    join customer c on c.customerID = tb.customerID
		where c.customerGender = 'M' and tb.price = 10;

# show the movieName,movieType,theaterName,customerName where customerGender = 'F' visiting and ticket_price = 10$
SELECT c.customerName,m.movieName,m.movieType,t.theaterName,s.showMovieDate from movie m 
	join scheduled s on m.movieID = s.movieID
    join theater t on t.theaterID = s.theaterID
    join ticket_booking tb on tb.showMovieID = s.showMovieID 
    join customer c on c.customerID = tb.customerID
		where c.customerGender = 'F' and c.customerAge > 18 and tb.price = 10;

# show the customer info who come to visit at theaterSensok
SELECT c.* FROM customer c
	JOIN ticket_booking tb ON c.customerID = tb.customerID
	JOIN scheduled s ON tb.showMovieID = s.showMovieID
	JOIN theater t ON s.theaterID = t.theaterID
		WHERE t.theaterName = 'Sensok theater';

# show the customer info who come to visit at theaterStoeng Meanchey
SELECT c.* FROM customer c
	JOIN ticket_booking tb ON c.customerID = tb.customerID
	JOIN scheduled s ON tb.showMovieID = s.showMovieID
	JOIN theater t ON s.theaterID = t.theaterID
		WHERE t.theaterName = 'Stoeng meanchey theater';

# show the customer info who come to visit at theater Rouseykeo
SELECT c.* FROM customer c
	JOIN ticket_booking tb ON c.customerID = tb.customerID
	JOIN scheduled s ON tb.showMovieID = s.showMovieID
	JOIN theater t ON s.theaterID = t.theaterID
		WHERE t.theaterName = 'Rouseykeo theater';

# show the customer info who come to visit at theater Toul Kork
SELECT c.* FROM customer c
	JOIN ticket_booking tb ON c.customerID = tb.customerID
	JOIN scheduled s ON tb.showMovieID = s.showMovieID
	JOIN theater t ON s.theaterID = t.theaterID
		WHERE t.theaterName = 'Toulkork theater';


# show the number of customer in each theater 
SELECT t.theaterName, COUNT(c.customerID) AS number_of_customer FROM theater t
	JOIN scheduled s ON t.theaterID = s.theaterID
	JOIN ticket_booking tb ON s.showMovieID = tb.showMovieID
	JOIN customer c ON tb.customerID = c.customerID
		GROUP BY t.theaterName;

# show the number of customer in each theater which divided by group of gender 
SELECT t.theaterName,c.customerGender, COUNT(c.customerID) AS number_of_customer FROM theater t
	JOIN scheduled s ON t.theaterID = s.theaterID
	JOIN ticket_booking tb ON s.showMovieID = tb.showMovieID
	JOIN customer c ON tb.customerID = c.customerID
		GROUP BY t.theaterName,c.customerGender;
        
        
        