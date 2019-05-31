import requests
import bs4
rec = requests.get('https://www.imdb.com/title/tt0110912/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd' + 
	'-322d-4646-8962-327b42fe94b1&pf_rd_r=QGSH8PWCFZMYZZ6JJGDX&pf_rd_s=center-1&pf_rd_t=15506&pf_' + 
	'rd_i=top&ref_=chttp_tt_8')
Main_Soup = bs4.BeautifulSoup(rec.content,'html.parser') 
# rec.content = rec.text
print(Main_Soup.find('a', title='See more release dates').string)
def get_movie_name(soup):
	s1 = soup.div.h1
	return s1.contents[0]

def get_year(soup):
	return soup.div.h1.a.contents[0]

def get_duration(soup):
	s3 = soup.div.time.string
	return s3.strip()

def get_genres(soup):
	s4=soup.find('div', class_='subtext')
	genres=[]
	for link in s4.find_all('a'):
		genres.append(link.string)
	genres.pop()
	return genres

def get_rating_value(soup):
	s5 = soup.find('span', itemprop='ratingValue')
	return s5.string
def get_rating_count(soup):	
	s6 = soup.find('span', itemprop='ratingCount')
	return s6.string.replace(",","")

def get_summary(soup):
	s7 = soup.find('div', class_='summary_text')
	return s7.string.strip()

def get_director(soup):
	s8 = soup.find_all('div', class_='credit_summary_item')
	return s8[0].find('a').string

def get_actors(soup):
	s8 = soup.find_all('div', class_='credit_summary_item')	
	actors=[]
	for link in s8[2].find_all('a'):
		actors.append(link.string)
	actors.pop()
	return actors

def get_restriction_age(soup):
	s9 = soup.find('div', class_='title_wrapper')
	return s9.div.contents[0].strip()

def print_all(soup):
	print(get_movie_name(soup))
	print(get_year(soup))
	print(get_duration(soup))
	print(get_genres(soup))
	print(get_rating_value(soup))
	print(get_rating_count(soup))
	print(get_summary(soup))
	print(get_director(soup))
	print(get_actors(soup))
	print(get_restriction_age(soup))


# ratingNum=print(float(get_rating_value(Main_Soup)) * int(get_rating_count(Main_Soup)))