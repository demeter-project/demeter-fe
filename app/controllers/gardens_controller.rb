class GardensController < ApplicationController
  def show
    @garden = GardenFacade.get_garden(params[:id])
    @plots = GardenFacade.get_garden_plots(@garden.id)
  end

  def new

  end

  def create
    params[:user_id] = current_user.id 
    new_garden = GardenFacade.create(garden_params)
    redirect_to garden_path(new_garden.id)
  end

  def destroy

    #send request to backend with garden id, delete associated plots
    redirect_to dashboard_path
  end

  private

  def garden_params
    params.permit(:name, :zip_code, :state_code, :user_id)
  end

end
