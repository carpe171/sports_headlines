desc "Erase and fill headlines"
task :ncaa_mens_bb_headlines => :environment do 
	#NcaaMensBbHeadline.destroy_all

	make_ncaa_mens_bb_headlines
end

def make_ncaa_mens_bb_headlines
	ncaa_mens_bb = 'http://api.espn.com/v1/sports/basketball/mens-college-basketball/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NcaaMensBbHeadline.update_from_espn(ncaa_mens_bb)
end