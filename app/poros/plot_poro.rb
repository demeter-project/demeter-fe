class PlotPoro
  attr_reader :id,
              :name,
              :garden_id

  def initialize(api)
    @id = api[:id]
    @name = api[:name]
    @garden_id = api[:garden_id]
  end
end