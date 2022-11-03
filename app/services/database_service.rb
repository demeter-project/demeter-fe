class DatabaseService

  # GET 
  def self.garden_endpoint(user_id) # get /gardens/:id
    response = conn.get('placeholder')
    parse(response)
  end

  def self.plots_endpoint(garden_id) # get /gardens/:id/plots
    response = conn.get('placeholder')
    parse(response)
  end

  def self.plant_endpoint(plant_id) # get /plant/:id
    response = conn.get('placeholder')
    parse(response)
  end

  # PATCH/POST 
  def self.add_plant_to_plot(garden_id, plot_id, plant_ids)
    conn.patch(
      uri: 'placeholder',
      params: { garden_id: garden_id, 
                id: plot_id,
                plant_ids: [plant_ids] 
              }
            )
  end

  def self.add_plot_to_garden(garden_id, name)
    conn.post(
      uri: 'placeholder',
      params: { garden_id: garden_id, 
                name: name 
              }
            )
  end

  def self.add_garden(name, zip_code, state, user_id)
    conn.post(
      uri: 'placeholder'
      params: { name: name, 
                zip_code: zip_code, 
                state: state, 
                user_id: user_id 
              }
            )
  end

  # DELETE 
  def self.remove_garden(garden_id)
    conn.delete(
      uri: 'placeholder'
      params: { garden_id: garden_id }
    )
  end

  def self.remove_plot_from_garden(garden_id, plot_id)
    conn.delete(
      uri: 'placeholder',
      params: { garden_id: garden_id,
                plot_it: plot_id
              }
            )
  end

  def self.remove_plant_from_plot(plot_id, plant_id)
    conn.delete(
      uri: 'placeholder',
      params: { plot_id: plot_id,
                plant_id: plant_id
              }
            )
  end

  private
  def self.conn 
    Faraday.new(
      url: 'placeholder_url'
    )
  end

  def self.parse(api_data)
    JSON.parse(api_data.body, symbolize_name: true)
  end
end