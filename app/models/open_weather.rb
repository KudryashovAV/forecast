class OpenWeather < ActiveRecord::Base
  include HTTParty
  base_uri "http://api.openweathermap.org"
  format :json

  def current(query)
    self.class.get('/data/2.5/weather', q: query)
  end
end
