import scraping_imdb
import query_generator

def printMovie(movieElements):
	tags = ["Nombre: ","Year: ","Duration: ","Genres: ","Ratin: ","Rating Count: ",
	"Summary: ","Director: ","actors: ","Restriction age: "]
	string =''
	for element in movieElements:
		string = string + tags[movieElements.index(element)] + str(element) + '\n'
	return string

def getMoviesFromHrefList(link, NumberOfmMovies=3):
	soup = scraping_imdb.get_soup(link)
	links = scraping_imdb.extract_herf_list_from_table(soup, NumberOfmMovies)
	string =''
	for i in range(len(links)):
		MovieElements = scraping_imdb.get_all(scraping_imdb.get_soup(links[(i-1)]))
		string = string + printMovie(MovieElements) + '\n'		
	print(string)
	
oh_please = """SELECT * FROM Movie
SELECT * FROM Actor
SELECT * FROM Category
SELECT * FROM MovieCategory
SELECT * FROM MovieActor

DELETE FROM Movie
DELETE FROM Actor 
DELETE FROM Category
DELETE FROM MovieCategory
DELETE FROM MovieActor \n\n"""

soup = scraping_imdb.get_soup('https://www.imdb.com/chart/moviemeter?ref_=nv_mv_mpm')
links = scraping_imdb.extract_herf_list_from_table(soup, 20)
string = ''
for i in range(len(links)):
	string = string + query_generator.unique_query(scraping_imdb.get_soup(links[(i-1)])) + '\n\n'

doc = open('C:\\Users\\nicas\\Desktop\\insert_movies_query.sql','w')
doc.write(oh_please + string)


