class PlantFacade < DatabaseService
  def self.get_plants(zip_code: nil, state_code: nil, sort_by: nil, search_name: nil)
    require 'pry'; binding.pry
    json = DatabaseService.get_plants_endpoint(plant_id, zip_code, state_code, search_name)

  end

  def self.get_plant(plant_id)       #get_plant_endpoint
    json = DatabaseService.get_plant_endpoint(plant_id)
    PlantPoro.new(json[:data])
  end

  

end
