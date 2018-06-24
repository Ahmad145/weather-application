class HomeController < ApplicationController
  def index
  	@cities = City.where(country: "PK")
  end

  def get_weather
  	weather_forecast = WeatherForecast.new(params[:location_id])
  	response = weather_forecast.city_weather
  	body = JSON.parse(response.body)
  	@city = body['city']['name']
  	@main_temperature_parameters = body['list'][0]['main']
  	respond_to do |format|
      format.js
  	end
  end
end
