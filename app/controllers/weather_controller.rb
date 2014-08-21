class WeatherController < ApplicationController
  def show
    if params[:query]
      @data = OpenWeather.new(params[:query]).current
      
      @daily = OpenWeather.new(params[:query]).forecast

      if @data['cod'] == '404'
        @data = nil
      end

    end
  end
end
