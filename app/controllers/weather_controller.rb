class WeatherController < ApplicationController
  def show
    if params[:city]
      @data = OpenWeather.new(params[:city]).current

      @daily = OpenWeather.new(params[:city]).forecast

      if @data['cod'] == '404'
        @data = nil
      end

    end
  end
end
