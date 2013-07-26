desc "Erase and fill headlines"
task :nfl_headlines => :environment do 
	#NflHeadline.destroy_all

	make_nfl_headlines
end

def make_nfl_headlines
	nfl = 'http://api.espn.com/v1/sports/football/nfl/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NflHeadline.update_from_espn(nfl)
end