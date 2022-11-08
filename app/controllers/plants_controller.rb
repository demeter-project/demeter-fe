class PlantsController < ApplicationController
  before_action :set_params, only: :index
  
  def index
    @garden = GardenFacade.get_garden(params[:garden_id])
    @plot = PlotFacade.get_plot(params[:garden_id], params[:plot_id])
    @plants = PlantFacade.get_plants(
      state_code: @garden.state_code, 
      zip_code: @garden.zip_code,
      search_name: @search_name,
      sort_by: @sort_by
    )
    set_index_bcs
  end

  def show
    @plant = PlantFacade.get_plant(params[:id])
    add_breadcrumb("Return to Previous Page", request.referrer)
  end

  private

  def set_params
    @sort_order = params[:sort_order]
    @search_name = params[:search_name]
    @sort_by = params[:sort_by]
  end

  def set_index_bcs
    add_breadcrumb("My Gardens", dashboard_path)
    add_breadcrumb(@garden.name, garden_path(@garden.id))
    add_breadcrumb(@plot.name, garden_plot_path(@garden.id, @plot.id))
    add_breadcrumb("Find Native Plants")
  end
end
