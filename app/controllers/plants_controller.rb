class PlantsController < ApplicationController
  def index
    @garden = GardenFacade.get_garden(params[:garden_id])
    @plot = PlotFacade.get_plot(params[:garden_id], params[:plot_id])
    @plants = PlantFacade.get_plants(
      state_code: @garden.state_code, 
      zip_code: @garden.zip_code,
      search_name: params[:search_name],
      sort_by: params[:sort_by],
      sort_order: params[:sort_order]
    )
  end

  def show
    @plant = PlantFacade.get_plant(params[:id])
  end
end
