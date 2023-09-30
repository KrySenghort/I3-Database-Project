use project_itc_cinema_system_formal;
SELECT * FROM movie;

INSERT INTO Movie (movieName, movieType, movieReleaseDate, movieDuration, movieRating, movieDescription) VALUES
	('The Avengers', 'Action', '2020-05-22', '02:30:00', 8.5, "Earth's mightiest heroes team up to save the world."),
	('Titanic', 'Romance', '1997-12-19', '03:15:00', 7.8, 'A tragic love story set aboard the RMS Titanic.'),
	('Inception', 'Sci-Fi', '2010-07-16', '02:28:00', 8.8, "A thief enters people's dreams to steal information."),
	('The Lion King', 'Animation', '1994-06-24', '01:29:00', 8.5, 'A young lion prince must reclaim his throne.'),
	('The Dark Knight', 'Action', '2008-07-18', '02:32:00', 9.0, 'Batman faces off against the Joker.'),
	('Frozen', 'Animation', '2013-11-27', '01:42:00', 7.5, 'A fearless princess sets off on a journey to find her estranged sister.'),
	('Jurassic Park', 'Adventure', '1993-06-11', '02:07:00', 8.1, 'Scientists create a theme park with genetically engineered dinosaurs.'),
	('Avatar', 'Sci-Fi', '2009-12-18', '02:42:00', 7.8, 'A paralyzed marine is sent to the planet Pandora on a unique mission.'),
	('Finding Nemo', 'Animation', '2003-05-30', '01:40:00', 8.1, 'A clownfish embarks on a journey to find his son.'),
	('Pulp Fiction', 'Crime', '1994-10-14', '02:34:00', 8.9, 'Interconnected stories of criminals in Los Angeles.'),
	('The Shawshank Redemption', 'Drama', '1994-09-23', '02:22:00', 9.3, 'Two imprisoned men bond over several years, finding solace and redemption through acts of common decency.'),
	('Interstellar', 'Sci-Fi', '2014-11-07', '02:49:00', 8.6, 'A group of explorers travel through a wormhole in space.'),
	('The Godfather', 'Crime', '1972-03-24', '02:55:00', 9.2, 'The aging patriarch of an organized crime dynasty transfers control to his reluctant son.'),
	('The Matrix', 'Sci-Fi', '1999-03-31', '02:16:00', 8.7, 'A computer hacker learns about the true nature of his reality.'),
	('Forrest Gump', 'Drama', '1994-07-06', '02:22:00', 8.8, 'A simple man experiences firsthand some of the key events of the latter half of the 20th century.'),
	('The Lord of the Rings: The Fellowship of the Ring', 'Fantasy', '2001-12-19', '02:58:00', 8.8, 'A hobbit sets out on a journey to destroy a powerful ring.'),
	('Toy Story', 'Animation', '1995-11-22', '01:21:00', 8.3, 'Toys come to life when humans are not present.'),
	('Inglourious Basterds', 'War', '2009-08-21', '02:33:00', 8.3, 'A group of Jewish U.S. soldiers plan to assassinate Nazi leaders in World War II.'),
	('The Avengers: Endgame', 'Action', '2019-04-26', '03:01:00', 8.4, 'The Avengers assemble for one final showdown against Thanos.'),
	('The Social Network', 'Drama', '2010-10-01', '02:00:00', 7.7, 'The story of the creation of Facebook.'),
	('The Revenant', 'Adventure', '2015-12-25', '02:36:00', 8.0, 'A frontiersman seeks revenge after being left for dead by his hunting team.'),
	('The Great Gatsby', 'Drama', '2013-05-10', '02:23:00', 7.2, 'A writer becomes entangled in the world of the wealthy elite.'),
	('La La Land', 'Musical', '2016-12-09', '02:08:00', 8.0, 'A jazz pianist falls in love with an aspiring actress in Los Angeles.'),
	('The Hangover', 'Comedy', '2009-06-05', '01:40:00', 7.7, 'A group of friends search for their missing friend after a wild bachelor party in Las Vegas.'),
	('Black Panther', 'Action', '2018-02-16', '02:14:00', 7.3, 'Challa, the Black Panther, rises to the throne of Wakanda.'),
	('The Wolf of Wall Street', 'Biography', '2013-12-25', '03:00:00', 8.2, 'The true story of Jordan Belfort, a wealthy stockbroker involved in corruption and fraud.'),
	('The Shape of Water', 'Fantasy', '2017-12-01', '02:03:00', 7.3, 'A mute janitor forms a unique relationship with an amphibious creature.'),
	('Gone Girl', 'Mystery', '2014-10-03', '02:29:00', 8.1, 'A man becomes the prime suspect in his wife disappearance.'),
	('The Fault in Our Stars', 'Romance', '2014-06-06', '02:06:00', 7.7, 'Two teenagers with cancer fall in love.'),
	('The Pursuit of Happyness', 'Drama', '2006-12-15', '01:57:00', 8.0, 'A struggling salesman takes custody of his son as he embarks on a life-changing journey.'),
	('The Martian', 'Sci-Fi', '2015-10-02', '02:24:00', 8.0, 'An astronaut is left stranded on Mars and must find a way to survive.'),
	('The Conjuring', 'Horror', '2013-07-19', '01:52:00', 7.5, 'Paranormal investigators help a family terrorized by a dark presence in their farmhouse.'),
	('The Notebook', 'Romance', '2004-06-25', '02:03:00', 7.8, 'A young couple\'s love is tested by the pressures of society and war.'),
	('Mad Max: Fury Road', 'Action', '2015-05-15', '02:00:00', 8.1, 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler.'),
	('The Dark Knight Rises', 'Action', '2012-07-20', '02:44:00', 8.4, 'Batman returns to protect Gotham City from a new threat.'),
	('The Shining', 'Horror', '1980-05-23', '02:26:00', 8.4, 'A family heads to an isolated hotel for the winter where an evil presence influences the father.'),
	('Pulp Fiction', 'Crime', '1994-10-14', '02:34:00', 8.9, 'The lives of various characters intertwine in a world of crime and redemption.'),
	('Interstellar', 'Sci-Fi', '2014-11-07', '02:49:00', 8.6, 'A team of explorers travel through a wormhole in search of a new habitable planet.'),
	('The Matrix', 'Sci-Fi', '1999-03-31', '02:16:00', 8.7, 'A computer hacker learns the truth about his reality and his role in the war against machines.'),
	('The Lion King', 'Animation', '1994-06-15', '01:28:00', 8.5, 'A young lion prince must reclaim his throne after his father\'s murder.'),
	('The Dark Knight Rises', 'Action', '2012-07-20', '02:44:00', 8.4, 'Batman returns to protect Gotham City from a new threat.'),
	('The Pursuit of Happyness', 'Drama', '2006-12-15', '01:57:00', 8.0, 'A struggling salesman takes custody of his son as he embarks on a life-changing journey.'),
	('The Martian', 'Sci-Fi', '2015-10-02', '02:24:00', 8.0, 'An astronaut is left stranded on Mars and must find a way to survive.'),
	('The Conjuring', 'Horror', '2013-07-19', '01:52:00', 7.5, 'Paranormal investigators help a family terrorized by a dark presence in their farmhouse.'),
	('The Notebook', 'Romance', '2004-06-25', '02:03:00', 7.8, 'A young couple\'s love is tested by the pressures of society and war.'),
	('Mad Max: Fury Road', 'Action', '2015-05-15', '02:00:00', 8.1, 'In a post-apocalyptic wasteland, a woman rebels against a tyrannical ruler.'),
	('The Dark Knight Rises', 'Action', '2012-07-20', '02:44:00', 8.4, 'Batman returns to protect Gotham City from a new threat.'),
	('The Shining', 'Horror', '1980-05-23', '02:26:00', 8.4, 'A family heads to an isolated hotel for the winter where an evil presence influences the father.'),
	('Pulp Fiction', 'Crime', '1994-10-14', '02:34:00', 8.9, 'The lives of various characters intertwine in a world of crime and redemption.'),
	('Interstellar', 'Sci-Fi', '2014-11-07', '02:49:00', 8.6, 'A team of explorers travel through a wormhole in search of a new habitable planet.'),
	('The Matrix', 'Sci-Fi', '1999-03-31', '02:16:00', 8.7, 'A computer hacker learns the truth about his reality and his role in the war against machines.'),
	('The Lion King', 'Animation', '1994-06-15', '01:28:00', 8.5, 'A young lion prince must reclaim his throne after his father\'s murder.'),
	('The Avengers', 'Action', '2012-05-04', '02:23:00', 8.0, 'Earth\'s mightiest heroes come together to battle a powerful enemy.'),
	('Fight Club', 'Drama', '1999-10-15', '02:19:00', 8.8, 'An insomniac office worker forms an underground fight club as a form of therapy.'),
	('The Godfather: Part II', 'Crime', '1974-12-20', '03:22:00', 9.0, 'The sequel continues the saga of the Corleone crime family.'),
	('The Lord of the Rings: The Two Towers', 'Fantasy', '2002-12-18', '02:59:00', 8.7, 'The second installment of the epic fantasy trilogy.'),
	('The Dark Knight', 'Action', '2008-07-18', '02:32:00', 9.0, 'Batman faces off against the Joker in a battle for Gotham City.'),
	('Inception', 'Sci-Fi', '2010-07-16', '02:28:00', 8.8, 'A thief enters people\'s dreams to steal information.'),
	('The Shawshank Redemption', 'Drama', '1994-09-23', '02:22:00', 9.3, 'Two imprisoned men bond over several years, finding solace and redemption through acts of common decency.'),
	('Gladiator', 'Action', '2000-05-05', '02:35:00', 8.5, 'A former Roman General seeks revenge in the gladiatorial arena.'),
	('Forrest Gump', 'Drama', '1994-07-06', '02:22:00', 8.8, 'A simple man experiences firsthand some of the key events of the latter half of the 20th century.'),
	('The Silence of the Lambs', 'Thriller', '1991-02-14', '01:58:00', 8.6, 'An FBI trainee seeks the help of a manipulative serial killer to catch another serial killer.'),
	('The Green Mile', 'Drama', '1999-12-10', '03:09:00', 8.6, 'A death row corrections officer witnesses supernatural events.'),
	('The Prestige', 'Mystery', '2006-10-20', '02:10:00', 8.5, 'Two rival magicians engage in a dangerous game of one-upmanship.'),
	('The Sixth Sense', 'Thriller', '1999-08-06', '01:47:00', 8.1, 'A child psychologist tries to help a young boy who claims to see ghosts.'),
	('The Departed', 'Crime', '2006-10-06', '02:31:00', 8.5, 'An undercover cop and a mole in the police attempt to identify each other.'),
	('The Social Network', 'Biography', '2010-10-01', '02:00:00', 7.7, 'The story of the creation of Facebook.'),
	('Braveheart', 'Biography', '1995-05-24', '02:58:00', 8.3, 'The story of Scottish warrior William Wallace.'),
	('The Exorcist', 'Horror', '1973-12-26', '02:02:00', 8.0, 'A young girl is possessed by a demonic entity, and her mother seeks help from two priests.'),
	('The Lion King', 'Animation', '2019-07-19', '01:58:00', 7.9, 'A live-action remake of the Disney animated classic.'),
	('The Revenant', 'Adventure', '2015-12-25', '02:36:00', 8.0, 'A frontiersman seeks revenge after being left for dead by his hunting team.'),
	('The Great Gatsby', 'Drama', '2013-05-10', '02:23:00', 7.2, 'A mysterious millionaire hosts extravagant parties in 1920s New York.'),
	('The Wolf of Wall Street', 'Biography', '2013-12-25', '03:00:00', 8.2, 'The rise and fall of a wealthy stockbroker.'),
	('The Imitation Game', 'Biography', '2014-11-28', '01:54:00', 8.0, 'The story of Alan Turing, the mathematician who helped crack the Enigma code during World War II.'),
	('The Hangover', 'Comedy', '2009-06-05', '01:40:00', 7.7, 'A bachelor party in Las Vegas takes a wild and unexpected turn.'),
	('The Conjuring 2', 'Horror', '2016-06-10', '02:14:00', 7.3, 'Paranormal investigators return to help a single mother and her four children.'),
	('The Matrix Reloaded', 'Sci-Fi', '2003-05-15', '02:18:00', 7.2, 'Neo continues his quest for the truth in a simulated reality.'),
	('The Bourne Identity', 'Action', '2002-06-14', '01:59:00', 7.9, 'A man is found floating in the Mediterranean Sea with no memory and a set of skills.'),
	('The Hangover Part II', 'Comedy', '2011-05-26', '01:42:00', 6.5, 'The Wolfpack finds themselves in another misadventure, this time in Bangkok.'),
	('The Bourne Supremacy', 'Action', '2004-07-23', '01:48:00', 7.7, 'Jason Bourne is targeted by a CIA operation gone wrong.'),
	('The Matrix Revolutions', 'Sci-Fi', '2003-11-05', '02:09:00', 6.7, 'The final chapter in the Matrix trilogy.'),
	('The Bourne Ultimatum', 'Action', '2007-08-03', '01:55:00', 8.0, 'Jason Bourne seeks to uncover his past while evading government agents.'),
	('The Hangover Part III', 'Comedy', '2013-05-23', '01:40:00', 5.8, 'The Wolfpack returns to Las Vegas for one last outrageous adventure.'),
	('The Conjuring: The Devil Made Me Do It', 'Horror', '2021-06-04', '01:51:00', 6.3, 'The Warrens investigate a murder case involving demonic possession.'),
	('The Hobbit: An Unexpected Journey', 'Fantasy', '2012-12-14', '02:49:00', 7.8, 'Bilbo Baggins joins a quest to reclaim a dwarf kingdom from a fearsome dragon.'),
	('The Girl with the Dragon Tattoo', 'Crime', '2011-12-20', '02:38:00', 7.8, 'A journalist and a hacker investigate a wealthy family\'s dark secrets.'),
	('Inception', 'Sci-Fi', '2010-07-16', '02:28:00', 8.8, 'A thief enters people\'s dreams to steal valuable information.'),
	('The Shawshank Redemption', 'Drama', '1994-10-14', '02:22:00', 9.3, 'Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.'),
	('Pulp Fiction', 'Crime', '1994-10-14', '02:34:00', 8.9, 'The lives of two mob hitmen, a boxer, a gangster\'s wife, and a pair of diner bandits intertwine in four tales of violence and redemption.'),
	('The Dark Knight', 'Action', '2008-07-18', '02:32:00', 9.0, 'Batman faces off against the Joker, a sadistic criminal mastermind.'),
	('Fight Club', 'Drama', '1999-10-15', '02:19:00', 8.8, 'An insomniac office worker and a devil-may-care soapmaker form an underground fight club.'),
	('The Godfather', 'Crime', '1972-03-24', '02:55:00', 9.2, 'The aging patriarch of an organized crime dynasty transfers control of his clandestine empire to his reluctant son.'),
	('The Lord of the Rings: The Fellowship of the Ring', 'Adventure', '2001-12-19', '02:58:00', 8.8, 'A group of unlikely heroes embark on a journey to destroy a powerful ring and save Middle-earth.'),
	('Forrest Gump', 'Drama', '1994-07-06', '02:22:00', 8.8, 'A simple man experiences firsthand some of the key events of the latter half of the 20th century.'),
	('The Matrix', 'Sci-Fi', '1999-03-31', '02:16:00', 8.7, 'A computer hacker discovers a dystopian reality where humanity is unknowingly trapped inside a simulated world.'),
	('Interstellar', 'Sci-Fi', '2014-11-07', '02:49:00', 8.6, 'A group of explorers leaves Earth to travel through a wormhole in search of a new habitable planet.'),
	('The Avengers', 'Action', '2012-05-04', '02:23:00', 8.0, 'A team of superheroes, including Iron Man, Captain America, and Thor, join forces to save the world from a powerful enemy.'),
	('The Shawshank Redemption', 'Drama', '1994-10-14', '02:22:00', 9.3, 'Two imprisoned men bond over several years, finding solace and eventual redemption through acts of common decency.'),
	('The Dark Knight Rises', 'Action', '2012-07-20', '02:44:00', 8.4, 'Eight years after Batman took the fall for Two-Face\'s crimes, a new terrorist leader threatens Gotham City.'),
	('The Lion King', 'Animation', '1994-06-15', '01:28:00', 8.5, 'A young lion prince flees his kingdom after the murder of his father and learns the true meaning of responsibility and bravery.')
    ;






























