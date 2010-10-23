require 'rubygems'

# If you're using bundler, you will need to add these 2 lines
require 'bundler'
Bundler.setup

require 'sinatra'

get '/' do
  "Hello world, it's #{Time.now} at the server!"
end