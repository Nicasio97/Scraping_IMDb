import requests
import bs4
def get_soup(link):
	rec = requests.get(link)	
	return bs4.BeautifulSoup(rec.content,'html.parser')

def get_movie_name(soup):
	s1 = soup.div.h1
	if s1 is None:
		return 'EMPTY'
	else:
		return s1.contents[0].strip()

def get_year(soup):
	s2 = soup.div.h1.a.contents[0]
	if s2 is None:
		return 'EMPTY'
	else:
		return s2

def get_duration(soup):
	s3 = soup.div.time
	if s3 is None:
		return 'EMPTY'
	else:	
		return s3.string.strip()

def get_genres(soup):
	s4=soup.find('div', class_='subtext')
	if s4 is None:
		return None
	else:		
		genres=[]
		for link in s4.find_all('a'):
			genres.append(link.string)
		genres.pop()	
		return genres

def get_rating_value(soup):
	s5 = soup.find('span', itemprop='ratingValue')
	if s5 is None:
		return 0
	else:
		return s5.string
def get_rating_count(soup):	
	s6 = soup.find('span', itemprop='ratingCount')
	if s6 is None:
		return 0
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
		return 'EMPTY'
	else:	
		return s8[0].find('a').string

def get_actors(soup):
	s9 = soup.find_all('div', class_='credit_summary_item')	
	if s9 is None:
		return 'EMPTY'
	else:	
		actors=[]
		for link in s9[2].find_all('a'):
			actors.append(link.string)
		actors.pop()
		return actors

def get_restriction_age(soup):
	s10 = soup.find('div', class_='title_wrapper')
	if s10 is None:
		return 'EMPTY'
	else:
		return s10.div.contents[0].strip()

def get_release_date(soup):
	s11 = soup.find('a', title='See more release dates').string
	if s11 is None:
		return 'EMPTY'
	else:
		return s11 

def get_all(soup,print_=False):
	elementList=[get_movie_name(soup),get_year(soup),get_duration(soup),get_genres(soup),get_rating_value(soup),get_rating_count(soup),
	get_summary(soup),get_director(soup),get_actors(soup),get_restriction_age(soup)]
	if print_ is True: 
		for element in elementList:				
			print(element)
	else:
		return elementList		
		
def extract_herf_list_from_table(soup,limit=None):
	tdlist=[]
	if limit is None:		
		tdlist=soup.find_all('td', class_='titleColumn')
	else:
		tdlist=soup.find_all('td', class_='titleColumn',limit=limit)
	link=''
	hreflist=[]
	i=0
	for b in tdlist:
		link = 'https://www.imdb.com' + tdlist[i].a['href']
		hreflist.append(link)	
		i = i + 1
	return hreflist	



