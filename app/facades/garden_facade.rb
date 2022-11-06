class GardenFacade < DatabaseService

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
    json[:data].map { |garden| UserGarden.new(garden[:attributes], garden[:id])}
  end

  # def self.create_garden(name, zip_code, state, user_id)  #create_garden_endpoint(name, zip_code, state, user_id)
  #   Database.create_garden_endpoint(name, zip_code, state, user_id)
  # end


end
