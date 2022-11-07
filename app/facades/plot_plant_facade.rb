class PlotPlantFacade
  def self.create(garden_id, plot_id, plant_ids)
    response = PlotPlantService.create_plot_plant_endpoint(garden_id, plot_id, plant_ids)
  end

  def self.delete_plot_plant(garden_id, plot_id, plot_plant_id)
    PlotPlantService.delete_plot_plant_endpoint(garden_id, plot_id, plot_plant_id)
  end

  def self.update_plot_plant(garden_id, plot_id, plot_plant_id, date_planted, quantity)
    DatabaseService.update_plot_plant(garden_id, plot_id, plot_plant_id, date_planted, quantity)
  end
end
