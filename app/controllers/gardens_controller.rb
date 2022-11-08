class GardensController < ApplicationController
  def show
    @garden = GardenFacade.get_garden(params[:id])
    @plots = GardenFacade.get_garden_plots(@garden.id)
  end

  def new
    @new_garden = NewGarden.new
  end

  def create
    params[:user_id] = current_user.id 
    @new_garden = NewGarden.new(garden_params)
    if @new_garden.save
      redirect_to garden_path(@new_garden.id)
    else
      render :new
    end
  end

  def destroy
    GardenFacade.destroy(params[:id])
    redirect_to dashboard_path
  end

  private

  def garden_params
    params.permit(:name, :zip_code, :state_code, :user_id)
  end

end
