class PlotFacade  < DatabaseService

  def self.get_plot(garden_id, plot_id)     #get_plot_endpoint
    json = DatabaseService.get_plot_endpoint(garden_id, plot_id)
    PlotPoro.new(json[:data])
  end

  def self.get_plot_plants(garden_id, plot_id)  #get_plot_plants_endpoint
    json = DatabaseService.get_plot_plants_endpoint(garden_id, plot_id)
    json[:data].map { |plot_plant| PlotPlantPoro.new(plot_plant) }
  end
end
