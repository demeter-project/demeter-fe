class Weather
  attr_reader :id,
              :day,
              :start_time,
              :end_time,
              :day_time,
              :temperature,
              :temperature_unit,
              :temperature_trend,
              :wind_speed,
              :wind_direction,
              :icon,
              :short_forecast, 
              :detailed_forecast

  def initialize(data)
    @id = data[:id]
    @day = data[:day]
    @start_time = data[:start_time]
    @end_time = data[:end_time]
    @day_time = data[:day_time]
    @temperature = data[:temperature]
    @temperature_unit = data[:temperature_unit]
    @temperature_trend = data[:temperature_trend]
    @wind_speed = data[:wind_speed]
    @wind_direction = data[:wind_direction]
    @icon = data[:icon]
    @short_forecast = data[:short_forecast]
    @detailed_forecast = data[:detailed_forecast]
  end
end
