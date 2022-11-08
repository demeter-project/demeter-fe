class PlantsController < ApplicationController
  def index
    @garden = GardenFacade.get_garden(params[:garden_id])
    @plot = PlotFacade.get_plot(params[:garden_id], params[:plot_id])
    @plants = PlantFacade.get_plants(plant_params)
  end

  def show
    @plant = PlantFacade.get_plant(params[:id])
  end

  private

  def plant_params
    params.permit(:zip_code, :state_code, :search_name, :sort_by)
  end

end
