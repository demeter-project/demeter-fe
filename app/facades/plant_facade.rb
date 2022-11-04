class PlantFacade < DatabaseService

  def self.get_plant(plant_id)       #get_plant_endpoint
    json = DatabaseService.get_plant_endpoint(plant_id)
    PlantPoro.new(json[:data])
  end

  

end
