class Weather
  attr_reader :period, :temp, :weather, :icon_path

  def initialize(weather_data)
    @period = DateTime.parse(weather_data[:period])
    @temp = weather_data[:temp]
    @weather = weather_data[:weather]
    @icon_path = weather_data[:icon_path]
  end
end