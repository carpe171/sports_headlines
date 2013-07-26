desc "Erase and fill headlines"
task :ncaa_mens_fb_headlines => :environment do 
	#NcaaMensFbHeadline.destroy_all

	make_ncaa_mens_fb_headlines
end

def make_ncaa_mens_fb_headlines
	ncaa_mens_fb = 'http://api.espn.com/v1/sports/football/college-football/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	NcaaMensFbHeadline.update_from_espn(ncaa_mens_fb)
end