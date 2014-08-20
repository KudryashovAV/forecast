class OpenWeather < ActiveRecord::Base
  include HTTParty
  base_uri "http://api.openweathermap.org/data/2.5/"
  format :json

  def initialize(city, page)
    @options = { query: {q: city, page: page} }
  end

  def current(query)
    self.class.get('/weather', @options)
  end
end
