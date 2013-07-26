desc "Erase and fill headlines"
task :nba_headlines => :environment do 
	#NbaHeadline.destroy_all

	make_nba_headlines
end

def make_nba_headlines
	nba = 'http://api.espn.com/v1/sports/basketball/nba/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	#ncaa_men_bb = 'http://api.espn.com/v1/sports/basketball/mens-college-basketball/news/?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NbaHeadline.update_from_espn(nba)
end