class GardenFacade < DatabaseService
  def self.gardens_array(user_id)
      # garden_endpoint(user_id)[:data].map do |garden|
      #   GardenPoro.new(garden)
      # end
    end
  end

  def self.plots_array(garden_id)
    # plot_endpoint(garden_id)[:data].map do |plot|
    #   PlotPoro.new(plot)
    # end
  end

  def self.plant_array(plot_id)
    # plant_endpoint(plot_id)[:data] do |plant|
    #   PlantPoro.new(plant)
    # end
  end

  def self.plant_details(plant_id)
    
  end
end