class PlotPlantFacade
  def self.create(garden_id, plot_id, plant_ids)
    response = DatabaseService.create_plot_plant_endpoint(garden_id, plot_id, plant_ids)
  end
end
