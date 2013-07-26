desc "Erase and fill headlines"
task :headlines => :environment do 
	#Headline.destroy_all

	make_headlines
end

def make_headlines
	top = 'http://api.espn.com/v1/sports/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj'
	Headline.update_from_espn(top)
end

# Headline.update_from_espn('http://api.espn.com/v1/sports/news/headlines/top?limit=50&apikey=2tpfdnkmhnvnxkcr59nw8gmj')