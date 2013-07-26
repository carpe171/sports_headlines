desc "Erase and fill headlines"
task :mlb_headlines => :environment do 
	#MlbHeadline.destroy_all

	make_mlb_headlines
end

def make_mlb_headlines
	mlb = 'http://api.espn.com/v1/sports/baseball/mlb/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	MlbHeadline.update_from_espn(mlb)
end