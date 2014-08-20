class OpenWeather < ActiveRecord::Base
	class OpenWeather
  include HTTParty
  base_uri "http://api.openweathermap.org"
  format :json

  def initialize(q)
    @options = { query: { q: city } }
  end

  def current(query)
    self.class.get("/data/2.5/weather", @options)
  end

end
end
