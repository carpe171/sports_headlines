desc "Erase and fill ALL headlines"
task :all_headlines => :environment do 
	#Headline.destroy_all

	make_headlines
	make_mlb_headlines
	make_nba_headlines
	make_ncaa_mens_bb_headlines
	make_ncaa_mens_fb_headlines
	make_nfl_headlines
	make_nhl_headlines
	make_si_headlines
end

def make_headlines
	top = 'http://api.espn.com/v1/sports/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	Headline.update_from_espn(top)
end

def make_mlb_headlines
	mlb = 'http://api.espn.com/v1/sports/baseball/mlb/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	MlbHeadline.update_from_espn(mlb)
end

def make_nba_headlines
	nba = 'http://api.espn.com/v1/sports/basketball/nba/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	#ncaa_men_bb = 'http://api.espn.com/v1/sports/basketball/mens-college-basketball/news/?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NbaHeadline.update_from_espn(nba)
end

def make_ncaa_mens_bb_headlines
	ncaa_mens_bb = 'http://api.espn.com/v1/sports/basketball/mens-college-basketball/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NcaaMensBbHeadline.update_from_espn(ncaa_mens_bb)
end

def make_ncaa_mens_fb_headlines
	ncaa_mens_fb = 'http://api.espn.com/v1/sports/football/college-football/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NcaaMensFbHeadline.update_from_espn(ncaa_mens_fb)
end

def make_nfl_headlines
	nfl = 'http://api.espn.com/v1/sports/football/nfl/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NflHeadline.update_from_espn(nfl)
end

def make_nhl_headlines
	nhl = 'http://api.espn.com/v1/sports/hockey/nhl/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NhlHeadline.update_from_espn(nhl)
end

def make_si_headlines
	SiHeadline.update_from_feed
end



