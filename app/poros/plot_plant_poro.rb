class PlotPlantPoro
  attr_reader :id,
              :plant_id,
              :plant_name,
              :quantity,
              :date_planted

  def initialize(api)
    @id = api[:id]
    @plant_id = api[:attributes][:plant_id]
    @plant_name = api[:attributes][:plant_name]
    @quantity = api[:attributes][:quantity]
    @date_planted = api[:attributes][:date_planted]

  end
end
