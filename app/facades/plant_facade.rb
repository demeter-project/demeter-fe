class PlantFacade
  def self.get_plants(zip_code: nil, state_code: nil, sort_by: nil, search_name: nil)
    json = DatabaseService.get_plants_endpoint(
      zip_code: zip_code, 
      state_code: state_code, 
      sort_by: sort_by, 
      search_name: search_name
    )
  end

  def self.get_plant(plant_id)       #get_plant_endpoint
    json = DatabaseService.get_plant_endpoint(plant_id)
    Plant.new(json[:data])
  end
end
