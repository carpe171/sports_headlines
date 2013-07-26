desc "Erase and fill headlines"
task :nhl_headlines => :environment do 
	#NhlHeadline.destroy_all

	make_nhl_headlines
end

def make_nhl_headlines
	nhl = 'http://api.espn.com/v1/sports/hockey/nhl/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NhlHeadline.update_from_espn(nhl)
end