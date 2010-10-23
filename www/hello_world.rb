require 'rubygems'

# If you're using bundler, you will need to add these 2 lines
require 'bundler'
require 'haml'
Bundler.setup

require 'sinatra'

get '/' do
  haml :index
end

get '/leboncoin/:query' do |query|
  require 'open-uri'
  require 'nokogiri'
  require 'htmlentities'
  @result = Hash.new
  @result['query'] = query
  @result['entries'] = Array.new
  coder = HTMLEntities.new
  Nokogiri::HTML(open('http://www.leboncoin.fr/annonces/offres/?f=a&th=1&q=' + query)).xpath('//table[@id="hl"]/tr/td[3]/a').each do |node|
    entry = Hash.new
    entry['title'] = coder.encode node.content.strip
    entry['link'] = node['href']
    @result['entries'].push entry
  end
  haml :leboncoin
end
