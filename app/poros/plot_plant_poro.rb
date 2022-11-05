class PlotPlantPoro
  attr_reader :id,
              :plant_id,
              :plant_name,
              :quantity,
              :date_planted

  def initialize(data)
    @id = data[:id]
    @plant_id = data[:attributes][:plant_id]
    @plant_name = data[:attributes][:plant_name]
    @quantity = data[:attributes][:quantity]
    @date_planted = data[:attributes][:date_planted]
  end
end
