# 0. show each of table 
SELECT * FROM customer;
SELECT * FROM movie;
SELECT * FROM scheduled;
SELECT * FROM theater;
SELECT * FROM ticket_booking;

# 1. show theater in which capacity = 1000
SELECT * FROM theater where theaterCapacity = 1000;
# 2. show movie info in which release at theater 01 
SELECT * FROM movie where theaterID = 1;
# 3. show movie info in which release at theater 02
SELECT * FROM movie where theaterID = 2;
# 4. show movie info in which release at theater 03
SELECT * FROM movie where theaterID = 3;
# 5. show movie info in which release at theater 04  
SELECT * FROM movie where theaterID = 4;

# 6. show movie info where movieDuration >= 2h
SELECT * FROM movie where movieDuration >= '02:00:00';
# 7. show movie info where movieDuration >= 1h but <= 2h
SELECT * FROM movie where movieDuration >= '01:00:00' and movieDuration <= '02:00:00';

# 8. show movie info where year(movieReleaseDate) = 2017
SELECT * FROM movie where movieReleaseDate >= '2017:01:01' and movieReleaseDate <= '2017:12:31';
# 9. show movie info where year(movieReleaseDate) = 2010
SELECT * FROM movie WHERE YEAR(movieReleaseDate) = 2010;
# 9. show movie info where year(movieReleaseDate) = 2012
SELECT * FROM movie where year(movieReleaseDate) = 2012;
# 10. show movie info where month(movieReleaseDate) = 1
SELECT * FROM movie where month(movieReleaseDate) = 2;
# 11. show movie info where month(movieReleaseDate) = 1 and year(movieReleaseDate) = 2010
SELECT * FROM movie where month(movieReleaseDate) = 2 and year(movieReleaseDate) = 2018;
# 12. show movie info where day(movieReleaseDate) = 16
SELECT * FROM movie where day(movieReleaseDate) = 16;
# 13. show movie info where month(movieReleaseDate) = 2 by hidding description and price.
SELECT movieID, theaterID, movieName, movieType, movieReleaseDate, movieDuration, movieRating 
FROM Movie where month(movieReleaseDate) = 2;

# 14. show movie info in which highest rating.  
SELECT * FROM movie where movieRating = (SELECT max(movieRating) FROM movie); 
# 15. show movie info in which lowest rating 
SELECT * FROM movie where movieRating = (SELECT min(movieRating) FROM movie); 
# 16. show movies info where average rating 
SELECT * FROM movie where movieRating >= 5 and movieRating < 6; 
# 17. show movie info where rating between 5 to 8
SELECT * FROM movie where movieRating between 5 and 8;

# 18. show movie info in which type of action
SELECT * FROM movie where movieType = 'Action';
# 19. show movie info in which type of comedia 
SELECT * FROM movie where movieType = 'Comedy';
# 20. show movie info in which type of romance 
SELECT * FROM movie where movieType = 'Drama';

# 21.show movie info where movieDescription is longest. 
SELECT * FROM movie where length(movieDescription) = (SELECT max(length(movieDescription)) FROM movie); 
# 21.show movie info where movieDescription is shortest. 
SELECT * FROM movie where length(movieDescription) = (SELECT min(length(movieDescription)) FROM movie); 
