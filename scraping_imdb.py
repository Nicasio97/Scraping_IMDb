import requests
import bs4
rec = requests.get('https://www.imdb.com/title/tt0110912/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd' + 
	'-322d-4646-8962-327b42fe94b1&pf_rd_r=QGSH8PWCFZMYZZ6JJGDX&pf_rd_s=center-1&pf_rd_t=15506&pf_' + 
	'rd_i=top&ref_=chttp_tt_8')
soup = bs4.BeautifulSoup(rec.content,'html.parser') 
# rec.content = rec.text

s1 = soup.div.h1
movie_name = s1.contents[0]
# print(movie_name)

year = soup.div.h1.a.contents[0]
# print(year)

s3 = soup.div.time.string
duration = s3.strip()
# print(duration)

s4=soup.find('div', class_='subtext')
genres=[]
for link in s4.find_all('a'):
	genres.append(link.string)
genres.pop()
# print(genres)

s5 = soup.find('span', itemprop='ratingValue')
ratingValue = s5.string
s6 = soup.find('span', itemprop='ratingCount')
ratingCount = s6.string
# print(ratingValue)
# print(ratingCount)

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

s7 = soup.find('div', class_='summary_text')
summary = s7.string.strip()
# print(summary)

s8 = soup.find_all('div', class_='credit_summary_item')
director=s8[0].find('a').string
print(director)

actors=[]
for link in s8[2].find_all('a'):
	actors.append(link.string)
actors.pop()
print(actors)

# <div class="plot_summary_wrapper">
#   <script>
#     if ('csm' in window) {
#       csm.measure('csm_TitlePlotAndCreditSummaryWidget_started');
#     }
#   </script>
#     <div class="plot_summary ">
#             <div class="summary_text">
#                     The lives of two mob hitmen, a boxer, a gangster &amp; his wife, and a pair of diner bandits intertwine in four tales of violence and redemption.
#             </div>

#     <div class="credit_summary_item">
#         <h4 class="inline">Director:</h4>
# <a href="/name/nm0000233/?ref_=tt_ov_dr">Quentin Tarantino</a>    </div>
#     <div class="credit_summary_item">
#         <h4 class="inline">Writers:</h4>
# <a href="/name/nm0000233/?ref_=tt_ov_wr">Quentin Tarantino</a> (stories), <a href="/name/nm0000812/?ref_=tt_ov_wr">Roger Avary</a> (stories)            <span class="ghost">|</span>
# <a href="fullcredits?ref_=tt_ov_wr#writers/">1 more credit</a>&nbsp;»
#     </div>
#     <div class="credit_summary_item">
#         <h4 class="inline">Stars:</h4>
# <a href="/name/nm0000237/?ref_=tt_ov_st_sm">John Travolta</a>, <a href="/name/nm0000235/?ref_=tt_ov_st_sm">Uma Thurman</a>, <a href="/name/nm0000168/?ref_=tt_ov_st_sm">Samuel L. Jackson</a>            <span class="ghost">|</span>
# <a href="fullcredits/?ref_=tt_ov_st_sm">See full cast &amp; crew</a>&nbsp;»
#     </div>
#     </div>
#   <script>
#     if ('csm' in window) {
#       csm.measure('csm_TitlePlotAndCreditSummaryWidget_finished');
#     }
#   </script>
#         <!--To display Pro Title CTA above the watchlist for in-development titles -->
#     <div class="wlb-title-main-details">
#         <span class="full-wl-button ribbonize" data-tconst="tt0110912" data-recordmetrics="true" style="position: relative;"><div class="wl-ribbon fullsize touch not-inWL" title="Click to add to watchlist"><div class="container"><span class="text"></span></div></div></span>
#     </div>
#   <script>
#     if ('csm' in window) {
#       csm.measure('csm_TitleReviewsAndPopularityWidget_started');
#     }
#   </script>
#       <div class="titleReviewBar ">           
#     <div class="titleReviewBarItem">
# <a href="criticreviews?ref_=tt_ov_rt"> <div class="metacriticScore score_favorable titleReviewBarSubItem">
# <span>94</span>
# </div></a>        <div class="titleReviewBarSubItem">
#             <div><a href="criticreviews?ref_=tt_ov_rt">
# Metascore
# </a>            </div>
#             <div><span class="subText"> 
#                From <a href="http://www.metacritic.com" target="_blank">metacritic.com</a> 
#                </span>
#             </div>
#         </div>
#     </div>
#                    <div class="divider"></div>
           
#     <div class="titleReviewBarItem titleReviewbarItemBorder">
#         <div>
#         Reviews
#         </div>
#         <div>
#             <span class="subText">
#                    <a href="reviews?ref_=tt_ov_rt">2.629 user</a>                   
#                        <span class="ghostText">|</span>
#                    <a href="externalreviews?ref_=tt_ov_rt">251 critic</a>
#              </span>
#         </div>
#     </div>
#                    <div class="divider"></div>

#     <div class="titleReviewBarItem">
#   <div class="titleOverviewSprite popularityTrendUp"></div>
#         <div class="titleReviewBarSubItem">
#             <div>
#             Popularity
#             </div>
#             <div>
#                 <span class="subText">
#                     79
#       (<span class="titleOverviewSprite popularityImageUp"></span> <span class="popularityUpOrFlat">53</span>)
#                 </span>
#             </div>
#         </div>                                   
#     </div>
#       </div>              
#   <script>
#     if ('csm' in window) {
#       csm.measure('csm_TitleReviewsAndPopularityWidget_finished');
#     }
#   </script>
#     </div>