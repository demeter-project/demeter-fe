class PlotPlantsController < ApplicationController
  def create
    response = PlotPlantFacade.create(params[:garden_id], params[:plot_id], params[:plant_ids])
    redirect_to garden_plot_path(params[:garden_id], params[:plot_id])
  end

  def destroy
    plot_plant = PlotPlantFacade.delete_plot_plant(params[:garden_id], params[:plot_id], params[[:id]])
    # plot_plant.destroy
  end
end
