class PlantFacade < DatabaseService

  def self.get_plant(plant_id)       #get_plant_endpoint
    json = DatabaseService.get_plant_endpoint(plant_id)
    Plant.new(json[:data])
  end

  def self.get_plants_by_state(state, aip_code, search_name = nil, sort_by = nil)   #get_plants_by_state
    json = DatabaseService.get_plants_by_state(state, aip_code, search_name = nil, sort_by = nil)
    json[:data].map { |plant| PlotPlant.new(plant)  }
  end

end
