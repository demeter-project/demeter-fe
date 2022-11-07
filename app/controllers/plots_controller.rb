class PlotsController < ApplicationController

  def show
#the api request has /gardens/garden_id/plot/plot_id do we need to resturcture?
  @garden = GardenFacade.get_garden(params[:garden_id])
  @plot = PlotFacade.get_plot(@garden.id, params[:id])
  @plot_plants = PlotFacade.get_plot_plants(@garden.id, @plot.id)
  end

  def new
    @garden = GardenFacade.get_garden(params[:garden_id])
  end

  def create
    garden = GardenFacade.get_garden(params[:garden_id])
    DatabaseService.create_plot_for_garden_endpoint(params[:garden_id], plot_params)
    redirect_to garden_path(garden.id)
  end

  def destroy
    garden = GardenFacade.get_garden(params[:garden_id])
    DatabaseService.delete_garden_plot_endpoint(params[:garden_id], params[:id])
    redirect_to garden_path(garden.id)
  end

  private 

  def plot_params
    params.permit(:name)
  end

end
