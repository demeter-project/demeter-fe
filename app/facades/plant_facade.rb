class PlantFacade
  def self.get_plant(plant_id)
    json = PlantService.get_plant_endpoint(plant_id)
    Plant.new(json[:data])
  end
  
  def self.get_plants(state_code: nil, zip_code: nil, search_name: nil, sort_by: nil, sort_order: nil)
    body = {
      state_code: state_code,
      zip_code: zip_code,
      search_name: search_name,
      sort_by: sort_by,
      sort_order: sort_order
    }
    json = PlantService.get_plants_endpoint(body)
    json[:data].map { |plant_data| Plant.new(plant_data)}
  end
end
