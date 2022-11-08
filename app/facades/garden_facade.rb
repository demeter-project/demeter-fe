class GardenFacade
  def self.get_garden(garden_id)    #get_garden_endpoint
    json = GardenService.get_garden_endpoint(garden_id)
    Garden.new(json[:data])
  end

  def self.get_garden_plots(garden_id)    #get_garden_plots_endpoint
    json = GardenService.get_garden_plots_endpoint(garden_id)
    json[:data].map { |plot| Plot.new(plot) }
  end

  def self.get_user_gardens(user_id)    #get_user_gardens_endpoint
    json = GardenService.get_user_gardens_endpoint(user_id)
    json[:data].map { |garden| Garden.new(garden)}
  end

  def self.destroy(garden_id)
    GardenService.delete_garden_endpoint(garden_id)
  end
end
