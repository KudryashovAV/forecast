class WeatherController < ApplicationController
  def show
    if params[:query]
      @data = OpenWeather.new(params[:query]).current
      if @data['cod'] == '404'
        @data = nil
      end
    end
  end
end
