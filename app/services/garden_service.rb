class GardenService < DatabaseService 
  def self.get_garden_endpoint(garden_id)
    response = conn.get("/api/v1/gardens/#{garden_id}")
    parse(response)
  end

  def self.get_garden_plots_endpoint(garden_id)
    response = conn.get("/api/v1/gardens/#{garden_id}/plots")
    parse(response)
  end

  def self.get_user_gardens_endpoint(user_id)
    response = conn.get('/api/v1/gardens', user_id: user_id)
    parse(response)
  end

  def self.create_garden_endpoint(garden_params)
    response = conn.post('/api/v1/gardens', garden_params.to_json)
    parse(response)
  end

  def self.delete_garden_endpoint(garden_id)
    conn.delete("/api/v1/gardens/#{garden_id}")
  end
end