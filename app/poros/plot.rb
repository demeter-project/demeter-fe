class Plot
  attr_reader :id,
              :name,
              :soil_ph_min,
              :soil_ph_max

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @soil_ph_min = data[:attributes][:soil_ph_min]
    @soil_ph_max = data[:attributes][:soil_ph_max]
    @shade_tolerant = data[:attributes][:shade_tolerant?]
    @contains_toxic = data[:attributes][:contains_toxic?]
    # @garden_id = data[:attributes][:garden_id]
  end

  def shade_tolerant?
    @shade_tolerant
  end

  def contains_toxic?
    @contains_toxic
  end
end
