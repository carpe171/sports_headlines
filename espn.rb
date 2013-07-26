require 'rubygems'
require 'nokogiri'
require 'open-uri'
require 'uri'



URL = 'http://www.sportslogos.net/teams/list_by_league/1/National_Hockey_League/NHL/logos/'

def make_absolute( href, root )
  URI.parse(root).merge(URI.parse(href)).to_s
end

Nokogiri::HTML(open(URL)).xpath("//img/@src").each do |src|
  uri = make_absolute(src,URL)
  File.open(File.basename(uri),'wb'){ |f| f.write(open(uri).read) }
end













































# url = 'http://rss.cnn.com/rss/si_topstories.rss'
# doc = Nokogiri::XML(open(url))

# doc.css('item').each do |item|
# 	title 				= item.at_css('title').text
# 	href 					= item.at_css('link').text
# 	description 	= item.at_css('description').text
# 	last_modified = item.at_css('pubDate').text
# 	image 				= item.at_css('image').text if item.at_css('image')
# 	puts ""
# 	puts title
# 	puts href
# 	puts description
# 	puts last_modified
# 	puts image
# end