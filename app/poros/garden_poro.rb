class GardenPoro
  attr_reader :id,
              :name,
              :zip_code,
              :state_code,
              :user_id

  def initialize(api)
    @id = api[:id]
    @name = api[:name]
    @zip_code = api[:zip_code]
    @state_code = api[:state_code]
    @user_id = api[:user_id]
  end
end