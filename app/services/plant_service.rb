class PlantService < DatabaseService 
  def self.get_plant_endpoint(plant_id)
    response = conn.get("/api/v1/plants/#{plant_id}")
    parse(response)
  end

  def self.get_plot_plants_endpoint(garden_id, plot_id)
    response = conn.get("/api/v1/gardens/#{garden_id}/plots/#{plot_id}/plot_plants")
    parse(response)
  end

  def self.get_plants_endpoint(state_code: nil, zip_code: nil, search_name: nil, sort_by: nil)
    queries = "state_code=#{state_code}&zip_code=#{zip_code}"
    if !search_name.nil?
      queries = queries + "&search_name=#{search_name}"
    elsif !sort_by.nil?
      queries = queries + "&sort_by=#{sort_by}"
    end
    response = conn.get("/api/v1/plants?#{queries}")
    parse(response)
  end

  
end