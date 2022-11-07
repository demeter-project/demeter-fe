class PlotPlantsController < ApplicationController
  def create
    response = PlotPlantFacade.create(params[:garden_id], params[:plot_id], params[:plant_ids])
    redirect_to garden_plot_path(params[:garden_id], params[:plot_id])
  end

  def destroy
    plot_plant = PlotPlantFacade.delete_plot_plant(params[:garden_id], params[:plot_id], params[:id])
    redirect_to garden_plot_path(params[:garden_id], params[:plot_id])
  end

  def update
    @date_time_now = DateTime.now.strftime("%Y-%m-%dT%H:%M")
    response = DatabaseService.update_plot_plant(params[:garden_id], params[:plot_id], params[:id], params[:date_planted], params[:quantity])
    redirect_to garden_plot_path(params[:garden_id], params[:plot_id])
  end
end
