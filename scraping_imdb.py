import requests
import bs4
rec = requests.get('https://www.imdb.com/title/tt0110912/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd' + 
	'-322d-4646-8962-327b42fe94b1&pf_rd_r=QGSH8PWCFZMYZZ6JJGDX&pf_rd_s=center-1&pf_rd_t=15506&pf_' + 
	'rd_i=top&ref_=chttp_tt_8')
soup = bs4.BeautifulSoup(rec.content,'html.parser') 
# rec.content = rec.text

s1 = soup.div.h1
movie_name = s1.contents[0]
print(movie_name)

year = soup.div.h1.a.contents[0]
print(year)

s3 = soup.div.time.string
duration = s3.strip()
print(duration)

s4=soup.find('div', class_='subtext')
genres=[]
for link in s4.find_all('a'):
	genres.append(link.string)
genres.pop()
print(genres)

s5 = soup.find('div', class_='ratings_wrapper')
# print(s5)

s6 = soup.find('span', itemprop='ratingValue')
ratingValue = s6.string
s7 = soup.find('span', itemprop='ratingCount')
ratingCount = s7.string
print(ratingValue)
print(ratingCount)

# <div class="title_wrapper">
# <h1 class="">Pulp Fiction&nbsp;<span id="titleYear">(<a href="/year/1994/?ref_=tt_ov_inf">1994</a>)</span></h1>
#             <div class="subtext">
#                     18
#     <span class="ghost">|</span>                    <time datetime="PT154M">
#                         2h 34min
#                     </time>
#     <span class="ghost">|</span>
# <a href="/search/title?genres=crime&amp;explore=title_type,genres&amp;ref_=tt_ov_inf">Crime</a>, 
# <a href="/search/title?genres=drama&amp;explore=title_type,genres&amp;ref_=tt_ov_inf">Drama</a>

#     <span class="ghost">|</span>
# <a href="/title/tt0110912/releaseinfo?ref_=tt_ov_inf" title="See more release dates">13 January 1995 (Spain)
# </a>            </div>
#         </div>