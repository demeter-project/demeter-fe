class GardenFacade < DatabaseService
  # def self.garden(user_id)
  #
  #   # GardenPoro.new(garden)
  # end

  def self.get_garden(garden_id)    #get_garden_endpoint
    json = DatabaseService.get_garden_endpoint(garden_id)
    Garden.new(json[:data])
  end

  def self.get_garden_plots(garden_id)    #get_garden_plots_endpoint
    json = DatabaseService.get_garden_plots_endpoint(garden_id)
    json[:data].map { |plot| Plot.new(plot) }
  end

  def self.get_user_gardens(user_id)    #get_user_gardens_endpoint
    json = DatabaseService.get_user_gardens_endpoint(user_id)
    json[:data].map { |garden| GardenPoro.new(garden[:attributes], garden[:id])}
  end

#Ask about below method
  def self.get_plants_by_state(state, aip_code, search_name = nil, sort_by = nil)   #get_plants_by_state
    json = DatabaseService.get_plants_by_state(state, aip_code, search_name = nil, sort_by = nil)
    json[:data].map { |plant| PlotPlant.new(plant)  }
  end

#is this necessary? below
  def self.create_garden(name, zip_code, state, user_id)  #create_garden_endpoint(name, zip_code, state, user_id)
    Database.create_garden_endpoint(name, zip_code, state, user_id)
  end


end
