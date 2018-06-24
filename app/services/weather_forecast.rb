class WeatherForecast
  include HTTParty
  base_uri 'api.openweathermap.org'

  def initialize(city_id)
    @options = { query: { id: city_id, APPID: ENV['WEATHER_API_APP_ID'] } }
  end

  def city_weather
    self.class.get("/data/2.5/forecast", @options)
  end

  def users
    self.class.get("/2.2/users", @options)
  end
end