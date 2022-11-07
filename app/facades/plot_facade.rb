class PlotFacade

  def self.get_plot(garden_id, plot_id)     #get_plot_endpoint
    json = PlotService.get_plot_endpoint(garden_id, plot_id)
    Plot.new(json[:data])
  end

  def self.get_plot_plants(garden_id, plot_id)  #get_plot_plants_endpoint
    json = PlotService.get_plot_plants_endpoint(garden_id, plot_id)
    json[:data].map { |plot_plant| PlotPlant.new(plot_plant) }
  end

  def self.create_plot_for_garden(garden_id, plot_params)
    PlotService.create_plot_for_garden_endpoint(garden_id, plot_params)
  end

  def self.delete_garden_plot(garden_id, plot_id)
    PlotService.delete_garden_plot_endpoint(garden_id, plot_id)
  end
end
