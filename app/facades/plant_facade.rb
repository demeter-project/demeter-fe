class PlantFacade
  def self.get_plant(plant_id)       #get_plant_endpoint
    json = PlantService.get_plant_endpoint(plant_id)
    Plant.new(json[:data])
  end
  
  def self.get_plants(query_hash)
    json = PlantService.get_plants_endpoint(
      zip_code: query_hash[:zip_code], 
      state_code: query_hash[:state_code], 
      sort_by: query_hash[:sort_by], 
      search_name: query_hash[:search_name]
    )
    json[:data].map { |plant_data| Plant.new(plant_data)}
  end

end
