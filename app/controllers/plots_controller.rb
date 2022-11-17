class PlotsController < ApplicationController

  before_action :get_garden

  def show
    @date_time_now = DateTime.now.strftime("%Y-%m-%d")
    @plot = PlotFacade.get_plot(@garden.id, params[:id])
    @plot_plants = PlotFacade.get_plot_plants(@garden.id, @plot.id)
    add_breadcrumb(@plot.name)
  end

  def new
    @new_plot = NewPlot.new(plot_params)
    add_breadcrumb("New Plot")
  end

  def create
    @new_plot = NewPlot.new(plot_params)
    if @new_plot.save
      redirect_to garden_plot_path(@new_plot.garden_id, @new_plot.id)
    else
      add_breadcrumb("New Plot")
      render :new
    end
  end

  def destroy
    PlotFacade.delete_garden_plot(params[:garden_id], params[:id])
    redirect_to garden_path(@garden.id)
  end

  private 

  def plot_params
    params.permit(:name, :garden_id)
  end

  def get_garden
    @garden = GardenFacade.get_garden(params[:garden_id])
    add_breadcrumb("My Gardens", dashboard_path)
    add_breadcrumb(@garden.name, garden_path(@garden.id))
  end

end
