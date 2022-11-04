class UserGardenPoro
  attr_reader :id,
              :name,
              :zip_code,
              :state_code,
              :user_id,

  def initialize(data, garden_id)
    @id = garden_id
    @name = data[:name]
    @zip_code = data[:zip_code]
    @state_code = data[:state_code]
    @user_id = data[:user_id]
  end
end
