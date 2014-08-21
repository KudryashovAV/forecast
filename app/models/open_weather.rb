class OpenWeather
  include HTTParty
  base_uri "http://api.openweathermap.org/data/2.5/"
  format :json

  def initialize(query)
    @options = { query: {q: query} }
  end

  def current
    self.class.get('/weather', @options)
  end
end
