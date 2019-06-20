import scraping_imdb
import query_generator

link = ('https://www.imdb.com/title/tt0110912/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p=e31d89dd' + 
	'-322d-4646-8962-327b42fe94b1&pf_rd_r=QGSH8PWCFZMYZZ6JJGDX&pf_rd_s=center-1&pf_rd_t=15506&pf_' + 
	'rd_i=top&ref_=chttp_tt_8')
link2= ('https://www.imdb.com/title/tt4154796/?pf_rd_m=A2FGELUUNOQJNL&pf_rd_p='+
	'ea4e08e1-c8a3-47b5-ac3a-75026647c16e&pf_rd_r=DG1G7TR5BQM8GNQBRM8Z&pf_rd_s=center' + 
	'-1&pf_rd_t=15506&pf_rd_i=moviemeter&ref_=chtmvm_tt_4')
MostPopularMovies=('https://www.imdb.com/chart/moviemeter?ref_=nv_mv_mpm')
Main_Soup = scraping_imdb.get_soup(link)
Secondary_Soup = scraping_imdb.get_soup(link2)
Third_Soup = scraping_imdb.get_soup(MostPopularMovies)

query_generator.print_all_queries(Main_Soup)


#doc = open('C:\\Users\\nicas\\Desktop\\insert_movies_query.sql','w')
#doc.write()

