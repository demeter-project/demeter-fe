class WeatherPoro
  attr_reader :number,
              :name,
              :startTime,
              :endTime,
              :isDaytime,
              :temperature,
              :temperatureUnit,
              :temperatureTrend,
              :windSpeed,
              :windDirection,
              :icon,
              :shortForecast, 
              :detailedForecast

  def initialize(data)
    @number = data[:number]
    @name = data[:name]
    @startTime = data[:startTime]
    @endTime = data[:endTime]
    @isDaytime = data[:isDaytime]
    @temperature = data[:temperature]
    @temperatureUnit = data[:temperatureUnit]
    @temperatureTrend = data[:temperatureTrend]
    @windSpeed = data[:windSpeed]
    @windDirection = data[:windDirection]
    @icon = data[:icon]
    @shortForecast = data[:shortForecast]
    @detailedForecast = data[:detailedForecast]
  end
end
