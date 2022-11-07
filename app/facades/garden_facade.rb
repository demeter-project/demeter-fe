class GardenFacade
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
    json[:data].map { |garden| UserGarden.new(garden[:attributes], garden[:id])}
  end
  
  def self.create(garden_params)
    json = DatabaseService.create_garden_endpoint(garden_params)
    UserGarden.new(json[:data], json[:data][:id].to_i)
  end

  def self.destroy(garden_id)
    DatabaseService.delete_garden_endpoint(garden_id)
  end
end
