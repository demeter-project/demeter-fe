class NewPlot
  attr_reader :name, :id, :garden_id, :errors

  def initialize(plot_params = nil)
    @id = nil
    @garden_id = plot_params[:garden_id]
    @name = plot_params[:name]
    @errors = {}
  end

  def save
    response = PlotService.create_plot_for_garden_endpoint(@garden_id, name: @name)
    if response.has_key?(:errors)
      response[:errors].each {|error| @errors[error[:source].to_sym] = error[:detail]}
      return false
    else
      @id = response[:data][:id].to_i
      return true
    end
  end
end