class NcaaMensBbHeadline < ActiveRecord::Base

	serialize :image_url

	def self.update_from_espn(espn_url)
		data = Faraday.get espn_url
		data = JSON.parse data.body
		feed = data['headlines']
		add_headlines(feed) 
	end

	private

	def self.add_headlines(feed)
		feed.each do |headline|
			headline.deep_symbolize_keys!
			#headline[:images].map { |m| m.symobilize_keys! }
			unless exists? :espn_id => headline[:id]
				create!(
					:espn_id 				=> headline[:id],
					:headline 			=> headline[:headline],
					:description		=> headline[:description],
					:last_modified 	=> headline[:lastModified],
					:href						=> headline[:links][:web][:href],
					:image_url => headline[:images].map { |m| m['url'] } 
					)
			end
		end
	end
end


#http://api.espn.com/v1/sports/news/headlines/top?apikey=2tpfdnkmhnvnxkcr59nw8gmj