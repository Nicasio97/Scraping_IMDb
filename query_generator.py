import requests
import bs4
import scraping_imdb
rec = requests.get('https://www.imdb.com/title/tt0110912/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd' + 
	'-322d-4646-8962-327b42fe94b1&pf_rd_r=QGSH8PWCFZMYZZ6JJGDX&pf_rd_s=center-1&pf_rd_t=15506&pf_' + 
	'rd_i=top&ref_=chttp_tt_8')
Main_Soup = bs4.BeautifulSoup(rec.content,'html.parser')
recSec = requests.get('https://www.imdb.com/title/tt4154796/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=ea4e08e1-c8a3-47b5-ac3a-75026647c16e&pf_rd_r=DG1G7TR5BQM8GNQBRM8Z&pf_rd_s=center-1&pf_rd_t=15506&pf_rd_i=moviemeter&ref_=chtmvm_tt_4')
Secondary_Soup = bs4.BeautifulSoup(recSec.content,'html.parser')	 
# rec.content = rec.text

def insert_movie(soup,movieName=None):
	Name=""
	if movieName is None:
		Name = scraping_imdb.get_movie_name(soup)
	else:
		Name = movieName 
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
		VALUES ('"""+Name+"','"+Description+"','"+Director+"','"+ ReleaseDate+"',"+str(Rating)+",'"+RunningTime+"','"+AgeRestriction+"',"+str(RatingCount)+",'"+str(RatingSum)+"""');
	END
END"""
	return query

def insert_actor(soup,actorList=None):
	actor_list = []
	query = "BEGIN" + "\n"	
	if actorList is None:
		actor_list = scraping_imdb.get_actors(soup)
	else:
		actor_list = actorList	
	for actor in actor_list:		
		string = "IF NOT EXISTS (SELECT Actor.Name FROM Actor WHERE Actor.Name = '"+actor+"') BEGIN INSERT INTO Actor VALUES ('"+actor+"') END" + "\n"
		query = query + string							
	query = query + "END;"
	return query	


def insert_category(soup,categoryList=None):
	category_list = []
	query = "BEGIN" + "\n"
	if categoryList is None:	
		category_list = scraping_imdb.get_genres(soup)
	else:
		category_list = categoryList	
	for category in category_list:		
		string = "IF NOT EXISTS (SELECT Category.Name FROM Category WHERE Category.Name = '"+category+"') BEGIN INSERT INTO Category VALUES ('"+category+"') END" + "\n"
		query = query + string					
	query = query + "END;"
	return query

def relate_MovieActor(soup,movieName=None,actorList=None):
	Name = ""
	actor_list = []
	if movieName is None:
		Name = scraping_imdb.get_movie_name(soup)
	else:
		Name = movieName
	if actorList is None:
		actor_list = scraping_imdb.get_actors(soup)
	else:
		actor_list = actorList		
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

def relate_MovieCategory(soup,movieName=None,categoryList=None):
	Name = ""
	category_list = []
	if movieName is None:
		Name = scraping_imdb.get_movie_name(soup)
	else:
		Name = movieName
	if categoryList is None:	
		category_list = scraping_imdb.get_genres(soup)
	else:
		category_list = categoryList	
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
	Name = scraping_imdb.get_movie_name(soup)
	actor_list = scraping_imdb.get_actors(soup)
	category_list = scraping_imdb.get_genres(soup)	
	print(insert_movie(soup,Name)+"\n"+" "+"\n"+insert_actor(soup,actor_list)+"\n"+" "+"\n"+insert_category(soup,category_list)+"\n"""
		+" "+"\n"+relate_MovieCategory(soup,Name,category_list)+"\n"+" "+"\n"+relate_MovieActor(soup,Name,actor_list))
	
print_all_queries(Main_Soup)



