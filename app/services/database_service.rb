class DatabaseService

  # GET
  def self.get_garden_endpoint(garden_id)
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

  def self.get_plants_by_state(state, aip_code, search_name = nil, sort_by = nil)
    response = conn.get('/api/v1/plants', 
                state: state,
                zip_code: zip_code,
                search_name: search_name,
                sort_by: sort_by)
    parse(response)
  end

  #POST
  def self.create_garden_endpoint(name, zip_code, state, user_id)
    conn.post('/api/v1/gardens',
      name: name,
      zip_code: zip_code,
      state: state,
      user_id: user_id)
  end

  def self.create_plot_for_garden_endpoint(garden_id, plot_params)
    conn.post("/api/v1/gardens/#{garden_id}/plots", plot_params.to_json)
  end

  def self.create_plant_for_plot_endpoint(garden_id, plot_id, plant_ids)
    conn.patch("/api/v1/gardens/#{garden_id}/plots/#{plot_id}", plant_ids: plant_ids)
  end

  #PATCH
  def self.update_plot_plant(garden_id, plot_id, plot_plant_id, date_planted, quantity)
    response = conn.patch("/api/v1/gardens/#{garden_id}/plots/#{plot_id}/plot_plants/#{plot_plant_id}",
                date_planted: date_planted,
                quantity: quantity)
    parse(response) # Will we create a facade method => poro method => view for this response?
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
