class GardenPlotPoro
  attr_reader :id,
              :name,
              :garden_id

  def initialize(api, garden_id)
    @id = api[:id]
    @name = api[:attributes][:name]
    @garden_id = api[:garden_id]
  end
end
