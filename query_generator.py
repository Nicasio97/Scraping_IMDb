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
	Category = "SACAR"
	ReleaseDate	= scraping_imdb.get_year(soup)
	Rating	= float(scraping_imdb.get_rating_value(soup))
	RunningTime = scraping_imdb.get_duration(soup)
	AgeRestriction	= scraping_imdb.get_restriction_age(soup)
	RatingCount	= int(scraping_imdb.get_rating_count(soup))
	RatingSum	= Rating * RatingCount
	query1 = "INSERT INTO Movie (Name,Description,Cast,Director,Category,ReleaseDate,Rating,RunningTime, AgeRestriction,RatingCount,RatingSum)"
	query2 = "VALUES ('"+Name+"','"+Description+"','SACAR','"+Director+"','"+Category+"','"+ReleaseDate+"',"+str(Rating)+",'"+RunningTime+"','"+AgeRestriction+"',"+str(RatingCount)+","+str(RatingSum)+");"
	return query1 + query2

def insert_actor(soup):
	string = "INSERT INTO Actor VALUES"
	actor_list = scraping_imdb.get_actors(soup)
	i = 1
	for actor in actor_list:
		if len(actor_list) != i:
			a =  "('"+ actor +"'),"
		else:
			a =  "('"+ actor +"')"			
		string = string + a	
	string = string + ";"		
	return string

def insert_category(soup):
	string = "INSERT INTO Category VALUES "
	category_list = scraping_imdb.get_genres(soup)	
	i = 1
	for category in category_list:
		if len(category_list) != i:
			a = "('"+ category +"'),"
		else:
			a = "('"+ category +"')"
		string = string + a	
		i = i + 1
	string = string + ";"
	return string

