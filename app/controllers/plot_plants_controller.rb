class PlotPlantsController < ApplicationController
  def create
    response = PlotPlantFacade.create(params[:garden_id], params[:plot_id], params[:plant_ids])
    redirect_to garden_plot_path(params[:garden_id], params[:plot_id])
  end
end
