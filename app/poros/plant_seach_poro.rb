class PlotPlantPoro
  attr_reader :id,
              :name,
              :usda_symbol,
              :scientific_name,
              :states,
              :duration,
              :suitable_for_hz

  def initialize(api)
    @id = api[:id]
    @name = api[:attributes][:name]
    @usda_symbol = api[:attributes][:usda_symbol]
    @scientific_name = api[:attributes][:scientific_name]
    @states = [:attributes][:states]
    @duration = [:attributes][:duation]
    @suitable_for_hz = [:attributes][:suitable_for_hz]
  end
end
