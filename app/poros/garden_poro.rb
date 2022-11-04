class GardenPoro
  attr_reader :id,
              :name,
              :zip_code,
              :state_code,
              :user_id,
              :weather_forcast

  def initialize(data, garden_id)
    @id = garden_id
    @name = data[:name]
    @zip_code = data[:zip_code]
    @state_code = data[:state_code]
    @user_id = data[:user_id]
    @weather_forcast = data[:weather_forcast].map { |day| Weather.new(day) }
  end
end
