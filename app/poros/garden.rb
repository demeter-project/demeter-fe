class Garden
  attr_reader :id,
              :name,
              :zip_code,
              :state_code,
              :user_id,
              :weather_forecast

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @zip_code = data[:attributes][:zip_code]
    @state_code = data[:attributes][:state_code]
    @user_id = data[:attributes][:user_id]
    if data[:attributes][:weather_forecast]
      @weather_forecast = data[:attributes][:weather_forecast].map { |period| Weather.new(period) }
    end
  end
end
