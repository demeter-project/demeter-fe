class PlotFacade  < DatabaseService

  def self.get_plot(garden_id, plot_id)     #get_plot_endpoint
    json = DatabaseService.get_plot_endpoint(garden_id, plot_id)
    PlotPoro.new(json[:data])
  end

  # def self.get_plot_plants()   #get_plot_plants_endpoint
  #   json = DatabaseService.get_plot_plants_endpoint()
  #   json.each {|plant| PlotPlant(plant)}
  # end


end
