class PlotPoro
  attr_reader :id,
              :name,
              :garden_id

  def initialize(api)
    @id = api[:id]
    @name = api[:attributes][:name]
    @garden_id = api[attributes][:garden_id]
  end
end