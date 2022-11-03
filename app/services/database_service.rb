class DatabaseService

  # GET 
  def self.get_garden_endpoint(garden_id) 
    response = conn.get("/gardens/#{garden_id}")
    parse(response)
  end

  def self.get_garden_plots_endpoint(garden_id)
    response = conn.get("/gardens/#{garden_id}/plots")
    parse(response)
  end

  def self.get_plot_endpoint(garden_id, plot_id)
    response = conn.get("/gardens/#{garden_id}/plots/#{plot_id}")
    parse(response)
  end

  def self.get_plot_plants_endpoint(garden_id, plot_id)
    response = conn.get("/gardens/#{garden_id}/plots/#{plot_id}/plot_plants")
    parse(response)
  end

  def self.get_user_gardens_endpoint(user_id)
    response = conn.get('/gardens/', user_id: user_id)
    parse(response)
  end

  def self.get_plant_endpoint(plant_id) 
    response = conn.get("/api/v1/plants/#{plant_id}")
    require 'pry'; binding.pry
    parse(response)
  end

  def self.get_plants_by_state(state, aip_code, search_name = nil, sort_by = nil)
    response = conn.get('/plants/', 
                state: state, 
                zip_code: zip_code, 
                search_name: search_name, 
                sort_by: sort_by)
    parse(response)
  end
  # PATCH/POST 
  def self.create_garden_endpoint(name, zip_code, state, user_id)
    conn.post('/gardens', 
      name: name,
      zip_code: zip_code,
      state: state,
      user_id: user_id)
  end

  # DELETE 

  private
  def self.conn 
    Faraday.new('http://localhost:3000')
  end

  def self.parse(api_data)
    require 'pry'; binding.pry
    JSON.parse(api_data.body, symbolize_names: true)
  end
end