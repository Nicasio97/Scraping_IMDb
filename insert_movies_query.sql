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
		WHERE Movie.Name = 'Avengers: Endgame')
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,
		PosterLink,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum)
		VALUES ('Avengers: Endgame','After the devastating events of "Avengers: Infinity War" (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos'' actions and restore balance to the universe.','Anthony Russo','2019','https://www.imdb.comhttps://m.media-amazon.com/images/M/MV5BMTc5MDE2ODcwNV5BMl5BanBnXkFtZTgwMzI2NzQ2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',
			8.7,'3h 1min','PG-13',459772,'4000016.3999999994');
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
		WHERE Movie.Name = 'Murder Mystery')
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,
		PosterLink,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum)
		VALUES ('Murder Mystery','A New York cop and his wife go on a European vacation to reinvigorate the spark in their marriage, but end up getting framed and on the run for the death of an elderly billionaire.','Kyle Newacheck','2019','https://www.imdb.comhttps://m.media-amazon.com/images/M/MV5BNTA2YTI5YjUtZWI4Zi00NWQ5LWFiYmEtOTBmNTUyNDAwNjllXkEyXkFqcGdeQXVyNjIzNzM4NzA@._V1_UX182_CR0,0,182,268_AL_.jpg',
			6.0,'1h 37min','PG-13',38578,'231468.0');
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
		WHERE Movie.Name = 'Toy Story 4')
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,
		PosterLink,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum)
		VALUES ('Toy Story 4','When a new toy called "Forky" joins Woody and the gang, a road trip alongside old and new friends reveals how big the world can be for a toy.','Josh Cooley','2019','https://www.imdb.comhttps://m.media-amazon.com/images/M/MV5BMTYzMDM4NzkxOV5BMl5BanBnXkFtZTgwNzM1Mzg2NzM@._V1_UX182_CR0,0,182,268_AL_.jpg',
			8.4,'1h 40min','G',33818,'284071.2');
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
		WHERE Movie.Name = 'Men in Black: International')
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,
		PosterLink,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum)
		VALUES ('Men in Black: International','The Men in Black have always protected the Earth from the scum of the universe. In this new adventure, they tackle their biggest threat to date: a mole in the Men in Black organization.','F. Gary Gray','2019','https://www.imdb.comhttps://m.media-amazon.com/images/M/MV5BMDZkODI2ZGItYTY5Yi00MTA4LWExY2ItM2ZmNjczYjM0NDg1XkEyXkFqcGdeQXVyMzY0MTE3NzU@._V1_UX182_CR0,0,182,268_AL_.jpg',
			5.7,'1h 54min','PG-13',20963,'119489.1');
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
		WHERE Movie.Name = 'Child''s Play')
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,
		PosterLink,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum)
		VALUES ('Child''s Play','A mother gives her 13-year-old son a toy doll for his birthday, unaware of its more sinister nature.','Lars Klevberg','2019','https://www.imdb.comhttps://m.media-amazon.com/images/M/MV5BNTNlNjIxNjktOWUyMS00YWY5LWEwZGItMjZmODJlZWNiZGM2XkEyXkFqcGdeQXVyNDg4NjY5OTQ@._V1_UX182_CR0,0,182,268_AL_.jpg',
			6.4,'1h 30min','R',6530,'41792.0');
	END
END

 
BEGIN
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Aubrey Plaza') BEGIN INSERT INTO Actor VALUES ('Aubrey Plaza') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Mark Hamill') BEGIN INSERT INTO Actor VALUES ('Mark Hamill') END
IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = 'Gabriel Bateman') BEGIN INSERT INTO Actor VALUES ('Gabriel Bateman') END
END;
 
BEGIN
IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = 'Horror') BEGIN INSERT INTO Category VALUES ('Horror') END
END;
 
INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='Child''s Play' AND Category.Name='Horror';
 
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Child''s Play'AND Actor.Name='Aubrey Plaza';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Child''s Play'AND Actor.Name='Mark Hamill';
INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='Child''s Play' AND Actor.Name='Gabriel Bateman';

