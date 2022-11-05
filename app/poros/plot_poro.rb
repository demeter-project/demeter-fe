class PlotPoro
  attr_reader :id,
              :name,
              :garden_id,
              :soil_ph_min,
              :soil_ph_max,
              :garden_id

  def initialize(data, garden_id)
    @id = data[:id]
    @name = data[:attributes][:name]
    @soil_ph_min = data[:attributes][:soil_ph_min]
    @soil_ph_max = data[:attributes][:soil_ph_max]
    @shade_tolerant = data[:attributes][:shade_tolerant?]
    @contains_toxic = data[:attributes][:contains_toxic?]
    @garden_id = garden_id
  end

  def shade_tolerant?
    @shade_tolerant
  end

  def contains_toxic?
    @contains_toxic
  end
end
