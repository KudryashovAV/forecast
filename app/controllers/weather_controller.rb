class WeatherController < ApplicationController
  def show
    if params[:query]
      @data = OpenWeather.new.current(params[:query])
    end
  end
end
