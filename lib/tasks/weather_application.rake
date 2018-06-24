namespace :weather_application do
  desc "This task creates all cities with their id's which will be used to fetch city weather data."
  task create_cities: :environment do
  	file = File.read('city.list.json')
	data_hash = JSON.parse(file)
	data_hash.each do |hash|
	puts "Creating City: #{hash['name']}."
	City.create(name: hash['name'], country: hash['country'], lat: hash["coord"]["lat"], lon: hash["coord"]["lon"], city_id: hash["id"])
	puts "Successfully Created City: #{hash['name']}."
	end
  end
end