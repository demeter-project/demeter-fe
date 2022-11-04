class PlantsController < ApplicationController
  def new
  end

  def create
  end

  def destroy
  end

  def show
    @plant = PlantFacade.get_plant(params[:id])
  end

end
