class DatabaseService

  # GET
  def self.get_garden_endpoint(garden_id)
    # require "pry"; binding.pry
    response = conn.get("/api/v1/gardens/#{garden_id}")
    parse(response)
  end

  def self.get_garden_plots_endpoint(garden_id)
    response = conn.get("/api/v1/gardens/#{garden_id}/plots")
    parse(response)
  end

  def self.get_plot_endpoint(garden_id, plot_id)
    response = conn.get("/api/v1/gardens/#{garden_id}/plots/#{plot_id}")
    parse(response)
  end

  def self.get_plot_plants_endpoint(garden_id, plot_id)
    response = conn.get("/api/v1/gardens/#{garden_id}/plots/#{plot_id}/plot_plants")
    parse(response)
  end

  def self.get_user_gardens_endpoint(user_id)
    response = conn.get('/api/v1/gardens', user_id: user_id)
    parse(response)
  end

  def self.get_plant_endpoint(plant_id)
    response = conn.get("/api/v1/plants/#{plant_id}")
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

  #POST
  def self.create_garden_endpoint(garden_params)
    response = conn.post('/api/v1/gardens', garden_params.to_json)
    parse(response)
  end

  def self.create_plot_for_garden_endpoint(garden_id, plot_params)
    conn.post("/api/v1/gardens/#{garden_id}/plots", plot_params.to_json)
  end

  #PATCH
  def self.create_plot_plant_endpoint(garden_id, plot_id, plant_ids)
    body = { plant_ids: plant_ids }
    response = conn.patch("api/v1/gardens/#{garden_id}/plots/#{plot_id}", body.to_json)
    parse(response)
  end

  def self.update_plot_plant(garden_id, plot_id, plot_plant_id, date_planted, quantity)
    body = {date_planted: date_planted, quantity: quantity}
    response = conn.patch("/api/v1/gardens/#{garden_id}/plots/#{plot_id}/plot_plants/#{plot_plant_id}", body.to_json)
    parse(response)
  end

  # DELETE
  def self.delete_garden_endpoint(garden_id)
    conn.delete("/api/v1/gardens/#{garden_id}")
  end

  def self.delete_garden_plot_endpoint(garden_id, plot_id)
    conn.delete("/api/v1/gardens/#{garden_id}/plots/#{plot_id}")
  end

  def self.delete_plot_plant_endpoint(garden_id, plot_id, plot_plant_id)
    conn.delete("/api/v1/gardens/#{garden_id}/plots/#{plot_id}/plot_plants/#{plot_plant_id}")
  end

  private
  def self.conn
    Faraday.new('https://demeter-be.herokuapp.com', headers: { "Content-Type" => "application/json" })
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_names: true)
  end
end
