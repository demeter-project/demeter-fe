class PlotFacade  < DatabaseService

  def self.get_plot(garden_id, plot_id)     #get_plot_endpoint
    json = DatabaseService.get_plot_endpoint(garden_id, plot_id)
    Plot.new(json[:data][:attributes], json[:data][:id], garden_id)
  end

  def self.get_plot_plants(garden_id, plot_id)  #get_plot_plants_endpoint
    json = DatabaseService.get_plot_plants_endpoint(garden_id, plot_id)
    json.each {|plant| PlotPlant(plant)}
  end
end
