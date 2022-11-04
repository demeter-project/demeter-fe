class PlotPoro
  attr_reader :id,
              :name,
              :garden_id

  def initialize(api, plot_id, garden_id)
    @id = api[:id]
    @name = api[:attributes][:name]
    @garden_id = api[:garden_id]
  end

end
