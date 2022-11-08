class NewGarden

  attr_reader :id, :name, :zip_code, :state_code, :user_id, :errors

  def initialize(garden_params = nil)
    @id = nil
    if garden_params
      @name = garden_params[:name]
      @zip_code = garden_params[:zip_code]
      @state_code = garden_params[:state_code]
      @user_id = garden_params[:user_id]
    end
    @errors = {}
  end

  def save
    response = GardenService.create_garden_endpoint(
      name: @name,
      zip_code: @zip_code,
      state_code: @state_code,
      user_id: @user_id 
    )
    if response.has_key?(:errors)
      response[:errors].each {|error| @errors[error[:source].to_sym] = error[:detail]}
      return false
    else
      @id = response[:data][:id].to_i
      return true
    end
  end
end