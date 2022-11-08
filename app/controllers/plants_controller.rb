class PlantsController < ApplicationController
  before_action :set_params, only: :index
  
  def index
    @garden = GardenFacade.get_garden(params[:garden_id])
    @plot = PlotFacade.get_plot(params[:garden_id], params[:plot_id])
    @plot_plants = PlotFacade.get_plot_plants(@garden.id, @plot.id)
    @plants = PlantFacade.get_plants(
      state_code: @garden.state_code, 
      zip_code: @garden.zip_code,
      search_name: @search_name,
      sort_by: @sort_by
    )
  end

  def show
    @plant = PlantFacade.get_plant(params[:id])
  end

  private

  def set_params
    @sort_order = params[:sort_order]
    @search_name = params[:search_name]
    @sort_by = params[:sort_by]
  end
end
