SELECT * FROM Movie
SELECT * FROM Actor
SELECT * FROM Category
SELECT * FROM MovieCategory
SELECT * FROM MovieActor

DELETE FROM Movie
DELETE FROM Actor 
DELETE FROM Category
DELETE FROM MovieCategory
DELETE FROM MovieActor 

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Ma')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Ma','A lonely woman befriends a group of teenagers and decides to let them party at her house. Just when the kids think their luck couldn''t get any better, things start happening that make them question the intention of their host.','Tate Taylor','2019',5.9,'1h 39min','R',7282,'42963.8');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Octavia Spencer') BEGIN INSERT INTO Actor VALUES ('Octavia Spencer') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Diana Silvers') BEGIN INSERT INTO Actor VALUES ('Diana Silvers') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Juliette Lewis') BEGIN INSERT INTO Actor VALUES ('Juliette Lewis') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Horror') BEGIN INSERT INTO Category VALUES ('Horror') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Thriller') BEGIN INSERT INTO Category VALUES ('Thriller') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Ma'AND Category.Name='Horror';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Ma' AND Category.Name='Thriller';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Ma'AND Actor.Name='Octavia Spencer';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Ma'AND Actor.Name='Diana Silvers';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Ma' AND Actor.Name='Juliette Lewis';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Dark Phoenix')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Dark Phoenix','Jean Grey begins to develop incredible powers that corrupt and turn her into a Dark Phoenix. Now the X-Men will have to decide if the life of a team member is worth more than all of humanity.','Simon Kinberg','2019',6.1,'1h 53min','PG-13',42087,'256730.69999999998');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'James McAvoy') BEGIN INSERT INTO Actor VALUES ('James McAvoy') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Michael Fassbender') BEGIN INSERT INTO Actor VALUES ('Michael Fassbender') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Jennifer Lawrence') BEGIN INSERT INTO Actor VALUES ('Jennifer Lawrence') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Action') BEGIN INSERT INTO Category VALUES ('Action') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Sci-Fi') BEGIN INSERT INTO Category VALUES ('Sci-Fi') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Dark Phoenix'AND Category.Name='Action';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Dark Phoenix'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Dark Phoenix' AND Category.Name='Sci-Fi';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Dark Phoenix'AND Actor.Name='James McAvoy';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Dark Phoenix'AND Actor.Name='Michael Fassbender';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Dark Phoenix' AND Actor.Name='Jennifer Lawrence';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'I Am Mother')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('I Am Mother','A teenage girl is raised underground by a kindly robot "Mother" -- designed to repopulate the earth following the extinction of mankind. But their unique bond is threatened when an inexplicable stranger arrives with alarming news.','Grant Sputore','2019',6.8,'1h 53min','EMPTY',24046,'163512.8');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Luke Hawker') BEGIN INSERT INTO Actor VALUES ('Luke Hawker') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Rose Byrne') BEGIN INSERT INTO Actor VALUES ('Rose Byrne') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Maddie Lenton') BEGIN INSERT INTO Actor VALUES ('Maddie Lenton') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Drama') BEGIN INSERT INTO Category VALUES ('Drama') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Horror') BEGIN INSERT INTO Category VALUES ('Horror') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Sci-Fi') BEGIN INSERT INTO Category VALUES ('Sci-Fi') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='I Am Mother'AND Category.Name='Drama';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='I Am Mother'AND Category.Name='Horror';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='I Am Mother' AND Category.Name='Sci-Fi';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='I Am Mother'AND Actor.Name='Luke Hawker';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='I Am Mother'AND Actor.Name='Rose Byrne';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='I Am Mother' AND Actor.Name='Maddie Lenton';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Men in Black: International')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Men in Black: International','The Men in Black have always protected the Earth from the scum of the universe. In this new adventure, they tackle their biggest threat to date: a mole in the Men in Black organization.','F. Gary Gray','2019',5.6,'1h 54min','PG-13',14821,'82997.59999999999');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Chris Hemsworth') BEGIN INSERT INTO Actor VALUES ('Chris Hemsworth') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Tessa Thompson') BEGIN INSERT INTO Actor VALUES ('Tessa Thompson') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Kumail Nanjiani') BEGIN INSERT INTO Actor VALUES ('Kumail Nanjiani') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Action') BEGIN INSERT INTO Category VALUES ('Action') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Men in Black: International'AND Category.Name='Action';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Men in Black: International'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Men in Black: International' AND Category.Name='Comedy';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Men in Black: International'AND Actor.Name='Chris Hemsworth';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Men in Black: International'AND Actor.Name='Tessa Thompson';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Men in Black: International' AND Actor.Name='Kumail Nanjiani';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Avengers: Endgame')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Avengers: Endgame','After the devastating events of "Avengers: Infinity War" (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos'' actions and restore balance to the universe.','Anthony Russo','2019',8.7,'3h 1min','PG-13',453008,'3941169.5999999996');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Robert Downey Jr.') BEGIN INSERT INTO Actor VALUES ('Robert Downey Jr.') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Chris Evans') BEGIN INSERT INTO Actor VALUES ('Chris Evans') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Mark Ruffalo') BEGIN INSERT INTO Actor VALUES ('Mark Ruffalo') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Action') BEGIN INSERT INTO Category VALUES ('Action') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Sci-Fi') BEGIN INSERT INTO Category VALUES ('Sci-Fi') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Avengers: Endgame'AND Category.Name='Action';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Avengers: Endgame'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Avengers: Endgame' AND Category.Name='Sci-Fi';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Avengers: Endgame'AND Actor.Name='Robert Downey Jr.';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Avengers: Endgame'AND Actor.Name='Chris Evans';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Avengers: Endgame' AND Actor.Name='Mark Ruffalo';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Aladdin')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Aladdin','A kind-hearted street urchin and a power-hungry Grand Vizier vie for a magic lamp that has the power to make their deepest wishes come true.','Guy Ritchie','2019',7.4,'2h 8min','PG',68155,'504347.0');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Will Smith') BEGIN INSERT INTO Actor VALUES ('Will Smith') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Mena Massoud') BEGIN INSERT INTO Actor VALUES ('Mena Massoud') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Naomi Scott') BEGIN INSERT INTO Actor VALUES ('Naomi Scott') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Family') BEGIN INSERT INTO Category VALUES ('Family') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Aladdin'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Aladdin'AND Category.Name='Comedy';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Aladdin' AND Category.Name='Family';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Aladdin'AND Actor.Name='Will Smith';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Aladdin'AND Actor.Name='Mena Massoud';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Aladdin' AND Actor.Name='Naomi Scott';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Rocketman')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Rocketman','A musical fantasy about the fantastical human story of "Elton John"''s breakthrough years.','Dexter Fletcher','2019',7.7,'2h 1min','R',33363,'256895.1');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Taron Egerton') BEGIN INSERT INTO Actor VALUES ('Taron Egerton') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Jamie Bell') BEGIN INSERT INTO Actor VALUES ('Jamie Bell') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Richard Madden') BEGIN INSERT INTO Actor VALUES ('Richard Madden') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Biography') BEGIN INSERT INTO Category VALUES ('Biography') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Drama') BEGIN INSERT INTO Category VALUES ('Drama') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Music') BEGIN INSERT INTO Category VALUES ('Music') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Rocketman'AND Category.Name='Biography';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Rocketman'AND Category.Name='Drama';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Rocketman' AND Category.Name='Music';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Rocketman'AND Actor.Name='Taron Egerton';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Rocketman'AND Actor.Name='Jamie Bell';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Rocketman' AND Actor.Name='Richard Madden';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Godzilla: King of the Monsters')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Godzilla: King of the Monsters','The crypto-zoological agency Monarch faces off against a battery of god-sized monsters, including the mighty Godzilla, who collides with Mothra, Rodan, and his ultimate nemesis, the three-headed King Ghidorah.','Michael Dougherty','2019',6.6,'2h 12min','PG-13',44829,'295871.39999999997');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Kyle Chandler') BEGIN INSERT INTO Actor VALUES ('Kyle Chandler') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Vera Farmiga') BEGIN INSERT INTO Actor VALUES ('Vera Farmiga') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Millie Bobby Brown') BEGIN INSERT INTO Actor VALUES ('Millie Bobby Brown') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Action') BEGIN INSERT INTO Category VALUES ('Action') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Fantasy') BEGIN INSERT INTO Category VALUES ('Fantasy') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Godzilla: King of the Monsters'AND Category.Name='Action';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Godzilla: King of the Monsters'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Godzilla: King of the Monsters' AND Category.Name='Fantasy';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Godzilla: King of the Monsters'AND Actor.Name='Kyle Chandler';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Godzilla: King of the Monsters'AND Actor.Name='Vera Farmiga';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Godzilla: King of the Monsters' AND Actor.Name='Millie Bobby Brown';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Doctor Sleep')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Doctor Sleep','Years following the events of "The Shining," a now-adult Dan Torrence meets a young girl with similar powers as his and tries to protect her from a cult known as The True Knot who prey on children with powers to remain immortal.','Mike Flanagan','2019',0,'EMPTY','EMPTY',0,'0.0');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Rebecca Ferguson') BEGIN INSERT INTO Actor VALUES ('Rebecca Ferguson') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Ewan McGregor') BEGIN INSERT INTO Actor VALUES ('Ewan McGregor') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Jacob Tremblay') BEGIN INSERT INTO Actor VALUES ('Jacob Tremblay') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Horror') BEGIN INSERT INTO Category VALUES ('Horror') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Doctor Sleep' AND Category.Name='Horror';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Doctor Sleep'AND Actor.Name='Rebecca Ferguson';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Doctor Sleep'AND Actor.Name='Ewan McGregor';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Doctor Sleep' AND Actor.Name='Jacob Tremblay';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Toy Story 4')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Toy Story 4','When a new toy called "Forky" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.','Josh Cooley','2019',8.8,'1h 40min','G',5465,'48092.00000000001');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Tom Hanks') BEGIN INSERT INTO Actor VALUES ('Tom Hanks') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Tim Allen') BEGIN INSERT INTO Actor VALUES ('Tim Allen') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Annie Potts') BEGIN INSERT INTO Actor VALUES ('Annie Potts') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Animation') BEGIN INSERT INTO Category VALUES ('Animation') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Toy Story 4'AND Category.Name='Animation';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Toy Story 4'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Toy Story 4' AND Category.Name='Comedy';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Toy Story 4'AND Actor.Name='Tom Hanks';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Toy Story 4'AND Actor.Name='Tim Allen';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Toy Story 4' AND Actor.Name='Annie Potts';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Once Upon a Time ... in Hollywood')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Once Upon a Time ... in Hollywood','A faded television actor and his stunt double strive to achieve fame and success in the film industry during the final years of Hollywood''s Golden Age in 1969 Los Angeles.','Quentin Tarantino','2019',9.7,'2h 39min','EMPTY',6190,'60042.99999999999');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Leonardo DiCaprio') BEGIN INSERT INTO Actor VALUES ('Leonardo DiCaprio') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Brad Pitt') BEGIN INSERT INTO Actor VALUES ('Brad Pitt') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Margot Robbie') BEGIN INSERT INTO Actor VALUES ('Margot Robbie') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Drama') BEGIN INSERT INTO Category VALUES ('Drama') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Once Upon a Time ... in Hollywood'AND Category.Name='Comedy';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Once Upon a Time ... in Hollywood' AND Category.Name='Drama';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Once Upon a Time ... in Hollywood'AND Actor.Name='Leonardo DiCaprio';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Once Upon a Time ... in Hollywood'AND Actor.Name='Brad Pitt';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Once Upon a Time ... in Hollywood' AND Actor.Name='Margot Robbie';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'John Wick: Chapter 3 - Parabellum')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('John Wick: Chapter 3 - Parabellum','Super-assassin John Wick is on the run after killing a member of the international assassin''s guild, and with a $14 million price tag on his head - he is the target of hit men and women everywhere.','Chad Stahelski','2019',8.0,'2h 11min','R',91816,'734528.0');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Keanu Reeves') BEGIN INSERT INTO Actor VALUES ('Keanu Reeves') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Halle Berry') BEGIN INSERT INTO Actor VALUES ('Halle Berry') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Ian McShane') BEGIN INSERT INTO Actor VALUES ('Ian McShane') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Action') BEGIN INSERT INTO Category VALUES ('Action') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Crime') BEGIN INSERT INTO Category VALUES ('Crime') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Thriller') BEGIN INSERT INTO Category VALUES ('Thriller') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='John Wick: Chapter 3 - Parabellum'AND Category.Name='Action';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='John Wick: Chapter 3 - Parabellum'AND Category.Name='Crime';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='John Wick: Chapter 3 - Parabellum' AND Category.Name='Thriller';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='John Wick: Chapter 3 - Parabellum'AND Actor.Name='Keanu Reeves';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='John Wick: Chapter 3 - Parabellum'AND Actor.Name='Halle Berry';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='John Wick: Chapter 3 - Parabellum' AND Actor.Name='Ian McShane';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Murder Mystery')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Murder Mystery','A New York cop and his wife go on a European vacation to reinvigorate the spark in their marriage, but end up getting framed and on the run for the death of an elderly billionaire.','Kyle Newacheck','2019',6.1,'1h 37min','PG-13',25389,'154872.9');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Adam Sandler') BEGIN INSERT INTO Actor VALUES ('Adam Sandler') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Jennifer Aniston') BEGIN INSERT INTO Actor VALUES ('Jennifer Aniston') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Luke Evans') BEGIN INSERT INTO Actor VALUES ('Luke Evans') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Action') BEGIN INSERT INTO Category VALUES ('Action') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Crime') BEGIN INSERT INTO Category VALUES ('Crime') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Murder Mystery'AND Category.Name='Action';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Murder Mystery'AND Category.Name='Comedy';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Murder Mystery' AND Category.Name='Crime';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Murder Mystery'AND Actor.Name='Adam Sandler';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Murder Mystery'AND Actor.Name='Jennifer Aniston';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Murder Mystery' AND Actor.Name='Luke Evans';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Always Be My Maybe')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Always Be My Maybe','A pair of childhood friends end up falling for each other when they grow up.','Nahnatchka Khan','2019',6.9,'1h 41min','PG-13',20897,'144189.30000000002');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Ali Wong') BEGIN INSERT INTO Actor VALUES ('Ali Wong') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Randall Park') BEGIN INSERT INTO Actor VALUES ('Randall Park') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'James Saito') BEGIN INSERT INTO Actor VALUES ('James Saito') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Romance') BEGIN INSERT INTO Category VALUES ('Romance') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Always Be My Maybe'AND Category.Name='Comedy';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Always Be My Maybe' AND Category.Name='Romance';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Always Be My Maybe'AND Actor.Name='Ali Wong';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Always Be My Maybe'AND Actor.Name='Randall Park';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Always Be My Maybe' AND Actor.Name='James Saito';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Frozen II')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Frozen II','Anna, Elsa, Kristoff, Olaf and Sven leave Arendalle and travel to an ancient, autumn-bound forest to uncover the origins of Elsa''s powers and save their kingdom.','Chris Buck','2019',0,'EMPTY','EMPTY',0,'0.0');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Evan Rachel Wood') BEGIN INSERT INTO Actor VALUES ('Evan Rachel Wood') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Kristen Bell') BEGIN INSERT INTO Actor VALUES ('Kristen Bell') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Jonathan Groff') BEGIN INSERT INTO Actor VALUES ('Jonathan Groff') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Animation') BEGIN INSERT INTO Category VALUES ('Animation') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Frozen II'AND Category.Name='Animation';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Frozen II'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Frozen II' AND Category.Name='Comedy';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Frozen II'AND Actor.Name='Evan Rachel Wood';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Frozen II'AND Actor.Name='Kristen Bell';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Frozen II' AND Actor.Name='Jonathan Groff';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'The Secret Life of Pets 2')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('The Secret Life of Pets 2','Continuing the story of Max and his pet friends, following their secret lives after their owners leave them for work or school each day.','Chris Renaud','2019',6.6,'1h 26min','PG',6188,'40840.799999999996');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Patton Oswalt') BEGIN INSERT INTO Actor VALUES ('Patton Oswalt') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Kevin Hart') BEGIN INSERT INTO Actor VALUES ('Kevin Hart') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Harrison Ford') BEGIN INSERT INTO Actor VALUES ('Harrison Ford') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Animation') BEGIN INSERT INTO Category VALUES ('Animation') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='The Secret Life of Pets 2'AND Category.Name='Animation';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='The Secret Life of Pets 2'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='The Secret Life of Pets 2' AND Category.Name='Comedy';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='The Secret Life of Pets 2'AND Actor.Name='Patton Oswalt';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='The Secret Life of Pets 2'AND Actor.Name='Kevin Hart';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='The Secret Life of Pets 2' AND Actor.Name='Harrison Ford';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'The Dead Don''t Die')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('The Dead Don''t Die','The peaceful town of Centerville finds itself battling a zombie horde as the dead start rising from their graves.','Jim Jarmusch','2019',5.9,'1h 44min','R',4560,'26904.0');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Bill Murray') BEGIN INSERT INTO Actor VALUES ('Bill Murray') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Adam Driver') BEGIN INSERT INTO Actor VALUES ('Adam Driver') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Tom Waits') BEGIN INSERT INTO Actor VALUES ('Tom Waits') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Fantasy') BEGIN INSERT INTO Category VALUES ('Fantasy') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Horror') BEGIN INSERT INTO Category VALUES ('Horror') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='The Dead Don''t Die'AND Category.Name='Comedy';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='The Dead Don''t Die'AND Category.Name='Fantasy';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='The Dead Don''t Die' AND Category.Name='Horror';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='The Dead Don''t Die'AND Actor.Name='Bill Murray';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='The Dead Don''t Die'AND Actor.Name='Adam Driver';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='The Dead Don''t Die' AND Actor.Name='Tom Waits';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Captain Marvel')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Captain Marvel','Carol Danvers becomes one of the universe''s most powerful heroes when Earth is caught in the middle of a galactic war between two alien races.','Anna Boden','2019',7.0,'2h 3min','PG-13',306299,'2144093.0');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Brie Larson') BEGIN INSERT INTO Actor VALUES ('Brie Larson') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Samuel L. Jackson') BEGIN INSERT INTO Actor VALUES ('Samuel L. Jackson') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Ben Mendelsohn') BEGIN INSERT INTO Actor VALUES ('Ben Mendelsohn') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Action') BEGIN INSERT INTO Category VALUES ('Action') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Sci-Fi') BEGIN INSERT INTO Category VALUES ('Sci-Fi') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Captain Marvel'AND Category.Name='Action';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Captain Marvel'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Captain Marvel' AND Category.Name='Sci-Fi';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Captain Marvel'AND Actor.Name='Brie Larson';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Captain Marvel'AND Actor.Name='Samuel L. Jackson';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Captain Marvel' AND Actor.Name='Ben Mendelsohn';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'A Star Is Born')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('A Star Is Born','A musician helps a young singer find fame as age and alcoholism send his own career into a downward spiral.','Bradley Cooper','2018',7.8,'2h 16min','R',252541,'1969819.8');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Lady Gaga') BEGIN INSERT INTO Actor VALUES ('Lady Gaga') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Bradley Cooper') BEGIN INSERT INTO Actor VALUES ('Bradley Cooper') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Sam Elliott') BEGIN INSERT INTO Actor VALUES ('Sam Elliott') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Drama') BEGIN INSERT INTO Category VALUES ('Drama') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Music') BEGIN INSERT INTO Category VALUES ('Music') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Romance') BEGIN INSERT INTO Category VALUES ('Romance') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='A Star Is Born'AND Category.Name='Drama';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='A Star Is Born'AND Category.Name='Music';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='A Star Is Born' AND Category.Name='Romance';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='A Star Is Born'AND Actor.Name='Lady Gaga';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='A Star Is Born'AND Actor.Name='Bradley Cooper';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='A Star Is Born' AND Actor.Name='Sam Elliott';

BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = 'Pokémon Detective Pikachu')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('Pokémon Detective Pikachu','In a world where people collect Pokémon to do battle, a boy comes across an intelligent talking Pikachu who seeks to be a detective.','Rob Letterman','2019',6.8,'1h 44min','PG',59731,'406170.8');
	END
END
 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Ryan Reynolds') BEGIN INSERT INTO Actor VALUES ('Ryan Reynolds') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Justice Smith') BEGIN INSERT INTO Actor VALUES ('Justice Smith') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Kathryn Newton') BEGIN INSERT INTO Actor VALUES ('Kathryn Newton') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Action') BEGIN INSERT INTO Category VALUES ('Action') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Adventure') BEGIN INSERT INTO Category VALUES ('Adventure') END
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Comedy') BEGIN INSERT INTO Category VALUES ('Comedy') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Pokémon Detective Pikachu'AND Category.Name='Action';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Pokémon Detective Pikachu'AND Category.Name='Adventure';
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Pokémon Detective Pikachu' AND Category.Name='Comedy';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Pokémon Detective Pikachu'AND Actor.Name='Ryan Reynolds';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Pokémon Detective Pikachu'AND Actor.Name='Justice Smith';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Pokémon Detective Pikachu' AND Actor.Name='Kathryn Newton';

