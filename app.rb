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


get '/photo' do
  random = rand(1...4)
  send_file "public/#{random}.jpeg"
end



get '/quote' do
  @greeter.quote
end


