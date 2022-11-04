class PlantPoro
  attr_reader :id,
              :usda_symbol,
              :common_name,
              :scientific_name,
              :states,
              :duration,
              :flower_color,
              :growth_rate,
              :toxic,
              :edible,
              :temperature_min,
              :frost_free_days_min,
              :drought_tolerance,
              :fire_tolerance,
              :moisture_use,
              :ph_minimum,
              :ph_maximum,
              :precipitation_max,
              :precipitation_min,
              :salinity_tolerance, 
              :shade_tolerance,
              :suitable_for_hz

  def initialize(api)
    @id = api[:id]
    @usda_symbol = api[:attributes][:usda_symbol]
    @common_name = api[:attributes][:common_name]
    @scientific_name = api[:attributes][:scientific_name]
    @states = api[:attributes][:states]
    @duration = api[:attributes][:duration]
    @flower_color = api[:attributes][:flower_color]
    @growth_rate = api[:attributes][:growth_rate]
    @toxic = api[:attributes][:toxicity]
    @edible = api[:attributes][:edible]
    @temperature_min = api[:attributes][:temperature_min]
    @frost_free_days_min = api[:attributes][:frost_free_days_min]
    @drought_tolerance = api[:attributes][:drought_tolerance]
    @fire_tolerance = api[:attributes][:fire_tolerance]
    @moisture_use = api[:attributes][:moisture_use]
    @ph_minimum = api[:attributes][:ph_minimum]
    @ph_maximum = api[:attributes][:ph_maximum]
    @precipitation_min = api[:attributes][:precipitation_min]
    @precipitation_max = api[:attributes][:precipitation_max]
    @salinity_tolerance = api[:attributes][:salinity_tolerance]
    @shade_tolerance = api[:attributes][:shade_tolerance]
    @suitable_for_hz = api[:attributes][:suitable_for_hz]
  end
end
