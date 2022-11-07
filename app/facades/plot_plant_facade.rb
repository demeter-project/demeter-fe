class PlotPlantFacade < DatabaseService
  def self.create(garden_id, plot_id, plant_ids)
    response = create_plot_plant_endpoint(garden_id, plot_id, plant_ids)
  end

  def self.delete_plot_plant(garden_id, plot_id, plot_plant_id)
    delete_plot_plant_endpoint(garden_id, plot_id, plot_plant_id)
  end
end
