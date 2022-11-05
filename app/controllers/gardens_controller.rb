class GardensController < ApplicationController
  def show
    # @garden = GardenFacade.get_garden(params[:id])
    # @plots = GardenFacade.get_garden_plots(@garden.id)
  end

  def new
  end

  def create

    DatabaseService.create_garden_endpoint(params[:name], params[:zip_code], params[:state_code], session[:user_id])
    #send request to create garden backend using garden_params
  end

  def destroy

    #send request to backend with garden id, delete associated plots
    redirect_to dashboard_path
  end

  private

  def garden_params
    params.permit(:name, :zipcode, :state_code)
  end

end
