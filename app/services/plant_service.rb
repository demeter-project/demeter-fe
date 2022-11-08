class PlantService < DatabaseService
  def self.get_plant_endpoint(plant_id)
    response = conn.get("/api/v1/plants/#{plant_id}")
    parse(response)
  end

  def self.get_plants_endpoint(body)
    response = conn.get("/api/v1/plants", body)
    parse(response)
  end
end