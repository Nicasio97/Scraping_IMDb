import requests
import bs4
def get_soup(link):
	rec = requests.get(link)	
	return bs4.BeautifulSoup(rec.content,'html.parser')

def get_movie_name(soup):
	s1 = soup.div.h1
	if s1 is None:
		return "None"
	else:
		return s1.contents[0].strip()

def get_year(soup):
	s2 = soup.div.h1.a.contents[0]
	if s2 is None:
		return "None"
	else:
		return s2

def get_duration(soup):
	s3 = soup.div.time.string
	if s3 is None:
		return "None"
	else:	
		return s3.strip()

def get_genres(soup):
	s4=soup.find('div', class_='subtext')
	if s4 is None:
		return "None"
	else:		
		genres=[]
		for link in s4.find_all('a'):
			genres.append(link.string)
		genres.pop()	
		return genres

def get_rating_value(soup):
	s5 = soup.find('span', itemprop='ratingValue')
	if s5 is None:
		return "None"
	else:
		return s5.string
def get_rating_count(soup):	
	s6 = soup.find('span', itemprop='ratingCount')
	if s6 is None:
		return "None"
	else:
		return s6.string.replace(",","")

def get_summary(soup):
	s7 = soup.find('div', class_='summary_text')
	s7 = s7.contents
	string = ''
	for a in range(len(s7)):
		if type(s7[a]).__name__ == 'Tag':		
			string = string + '"' +s7[a].string + '"'
		else:	
			string = string + s7[a].string
	return string.strip()

def get_director(soup):
	s8 = soup.find_all('div', class_='credit_summary_item')
	if s8 is None:
		return "None"
	else:	
		return s8[0].find('a').string

def get_actors(soup):
	s9 = soup.find_all('div', class_='credit_summary_item')	
	if s9 is None:
		return "None"
	else:	
		actors=[]
		for link in s9[2].find_all('a'):
			actors.append(link.string)
		actors.pop()
		return actors

def get_restriction_age(soup):
	s10 = soup.find('div', class_='title_wrapper')
	if s10 is None:
		return "None"
	else:
		return s10.div.contents[0].strip()

def get_release_date(soup):
	s11 = soup.find('a', title='See more release dates').string
	if s11 is None:
		return "None"
	else:
		return s11 

def print_all(soup):
	elementList=[get_movie_name(soup),get_year(soup),get_duration(soup),get_genres(soup),get_rating_value(soup),get_rating_count(soup),
	get_summary(soup),get_director(soup),get_actors(soup),get_restriction_age(soup)]
	for element in elementList:				
		print(element)		





