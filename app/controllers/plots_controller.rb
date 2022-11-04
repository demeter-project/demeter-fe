class PlotsController < ApplicationController

  def show
#the api request has /gardens/garden_id/plot/plot_id do we need to resturcture?
    # @plot = PlotFacade(params[:id])
    # @plants = PlotFacade.get_plot_plants(@plot.garden_id, @plot.id)
  end

  def new
  end

  def create
  end

  def destroy
  end

end
