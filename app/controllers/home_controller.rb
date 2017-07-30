require 'forecast_io'
require 'date'

class HomeController < ApplicationController
  def index
    forecast = forecast = ForecastIO.forecast(37.56, 126.97, params: { units: 'si' })
    
    @timezone = forecast.timezone
    #@daily = forecast.daily.summary
    @data = forecast.daily.data
    #unixTime = forecast.hourly.data[0].time.to_s
    #@localTime = DateTime.strptime(unixTime,'%s')
    
    @currentData = forecast.currently
    @hourlyData = forecast.hourly.data
  end
end
