require "sinatra"
require 'sinatra/reloader'
require "better_errors"
require './greeter'
also_reload './greeter.rb'



configure :development do
  use BetterErrors::Middleware
  BetterErrors.application_root = __dir__
end


before do
	@greeter = Greeter.new
end


get '/hi' do
  @greeter.greet
end


get '/quote/:tag' do
	if params[:tag] == 'love' || params[:tag] == 'life'
		@greeter.quote params[:tag]	
	else
		raise "tag must not be anything but 'life'"	
	end

end


# get '/photo' do
# 	random = rand(1...4)
#   	# send_file "public/#{random}.jpg"
#   	send_file "public/4.jpg"

# end

get '/photo' do
  random = rand(1...4)
  send_file "public/#{random}.jpeg"
end



get '/quote' do
  @greeter.quote
end













# @greeter.sendPhoto
	# images = ["img/1-food.png","img/3-food.png","img/4-food.png"]
	# send_file "img/3-food.png"
	# send_file images.sample
  	# send_file "public/#{rand(1..4)}.png"