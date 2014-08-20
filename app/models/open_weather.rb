class OpenWeather < ActiveRecord::Base
  
  def current(query)
    HTTParty.get('http://api.openweathermap.org/data/2.5/weather', :q => query)
  end
end
