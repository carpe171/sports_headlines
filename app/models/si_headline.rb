 class SiHeadline < ActiveRecord::Base
	require 'nokogiri'
	require 'open-uri'

  def self.update_from_feed
    url = 'http://rss.cnn.com/rss/si_topstories.rss'
		doc = Nokogiri::XML(open(url))
		add_entries(doc)
  end
  
  private
  
  def self.add_entries(doc)
    doc.css('item').each do |item|
      if item.at_css('image') 
        unless exists? :si_id => item.at_css('guid').text
          create!(
  					:si_id 				=> item.at_css('guid').text,
  					:headline 			=> item.at_css('title').text,
  					#:description		=> item.at_css('description').text ||= nil,
  					:last_modified 	=> item.at_css('pubDate').text,
  					:href						=> item.at_css('link').text,
  					:image_url => item.at_css('image').text
          )
        end
      end
    end
  end

end




