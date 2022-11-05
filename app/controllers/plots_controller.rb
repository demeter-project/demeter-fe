class PlotsController < ApplicationController

  def show
#the api request has /gardens/garden_id/plot/plot_id do we need to resturcture?
    @garden = GardenFacade.get_garden(params[:garden_id])
    @plot = PlotFacade.get_plot(@garden.id, params[:id])
    @plot_plants = PlotFacade.get_plot_plants(@garden.id, @plot.id)
  end

  def new
  end

  def create
  end

  def destroy
  end

end
