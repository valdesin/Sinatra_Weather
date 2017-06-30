require 'sinatra'
require 'core_weather.rb'

get "/weather" do
	@weather = Weather.new
	erb :index
end
