import requests
import bs4
import scraping_imdb
rec = requests.get('https://www.imdb.com/title/tt0110912/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd' + 
	'-322d-4646-8962-327b42fe94b1&pf_rd_r=QGSH8PWCFZMYZZ6JJGDX&pf_rd_s=center-1&pf_rd_t=15506&pf_' + 
	'rd_i=top&ref_=chttp_tt_8')
Main_Soup = bs4.BeautifulSoup(rec.content,'html.parser') 
# rec.content = rec.text

def insert_movie(soup):
	Name = scraping_imdb.get_movie_name(soup)
	Description	= scraping_imdb.get_summary(soup)
	Director = scraping_imdb.get_director(soup)
	ReleaseDate	= scraping_imdb.get_year(soup)
	Rating	= float(scraping_imdb.get_rating_value(soup))
	RunningTime = scraping_imdb.get_duration(soup)
	AgeRestriction	= scraping_imdb.get_restriction_age(soup)
	RatingCount	= int(scraping_imdb.get_rating_count(soup))
	RatingSum	= Rating * RatingCount
	query = """BEGIN
	IF NOT EXISTS (SELECT Movie.Name FROM Movie 
                   WHERE Movie.Name = '"""+Name+"""')                   
	BEGIN
		INSERT INTO Movie (Name,Description,Director,ReleaseDate,Rating,RunningTime,AgeRestriction,RatingCount,RatingSum) 
		VALUES ('"""+Name+"','"+Description+"','"+Director+"','"+ ReleaseDate+"',"+str(Rating)+",'"+RunningTime+"','"+AgeRestriction+"',"+str(RatingCount)+",'"+str(RatingSum)+"""'');
	END
END"""
	return query

def insert_actor(soup):
	query = "BEGIN" + "\n"	
	actor_list = scraping_imdb.get_actors(soup)
	for actor in actor_list:		
		string = "IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = '"+actor+"') BEGIN INSERT INTO Actor VALUES ('"+actor+"') END" + "\n"
		query = query + string							
	query = query + "END;"
	return query	


def insert_category(soup):
	query = "BEGIN" + "\n"
	category_list = scraping_imdb.get_genres(soup)		
	for category in category_list:		
		string = "IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = '"+category+"') BEGIN INSERT INTO Category VALUES ('"+category+"') END" + "\n"
		query = query + string					
	query = query + "END;"
	return query

def relate_MovieActor(soup):
	Name = scraping_imdb.get_movie_name(soup)
	actor_list = scraping_imdb.get_actors(soup)	
	query = ""	
	i = 1
	for actor in actor_list:
		if len(actor_list) != i:
			string = "INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='"+Name+"'AND Actor.Name='"+actor+"';" + "\n"
		else:
			string = "INSERT INTO MovieActor(MovieID,ActorID) SELECT MovieID, ActorID FROM Movie, Actor WHERE Movie.Name='"+Name+"' AND Actor.Name='"+actor+"';"
		query = query + string			
		i = i + 1			
	return query

def relate_MovieCategory(soup):
	Name = scraping_imdb.get_movie_name(soup)
	category_list = scraping_imdb.get_genres(soup)
	query = ""	
	i = 1
	for category in category_list:
		if len(category_list) != i:
			string = "INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='"+Name+"'AND Category.Name='"+category+"';" + "\n"
		else:
			string = "INSERT INTO MovieCategory(MovieID,CategoryID) SELECT MovieID, CategoryID FROM Movie, Category WHERE Movie.Name='"+Name+"' AND Category.Name='"+category+"';"
		query = query + string			
		i = i + 1			
	return query

def print_all_queries(soup):
	print(insert_movie(soup)+"\n"+" "+"\n"+insert_actor(soup)+"\n"+" "+"\n"+insert_category(soup)+"\n"+" "+"\n"+relate_MovieCategory(soup)+"\n"+" "+"\n"+relate_MovieActor(soup))
	
print_all_queries(Main_Soup)