class WeatherController < ApplicationController
  def show
    if params[:query]
      @data = OpenWeather.new('query', 1).current(params[:query])
    end
  end
end
