desc "Erase and fill headlines"
task :si_headlines => :environment do 
	#SiHeadline.destroy_all

	make_si_headlines
end

def make_si_headlines
	SiHeadline.update_from_feed
end