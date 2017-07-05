require 'open-uri'
require 'nokogiri'

class Weather

	attr_accessor :main_temp
	

	def parse_main_temp
		doc = Nokogiri::HTML(open("https://es.search.yahoo.com/search;?q=#{@city}%20weather"))
		@main_temp = doc.css("span.currTemp").text
	end

	def temperature city="Kiev"
		@city = city
		self.parse_main_temp
		"Temperature in #{@city} is #{@main_temp}C"
	end

	#private :parse_main_temp	

end
