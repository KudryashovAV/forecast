class WeatherController < ApplicationController
  def show
    if params[:query]
      @data = OpenWeather.new(params[:query]).current(params[:query])
    end
  end
end
