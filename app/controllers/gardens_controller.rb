class GardensController < ApplicationController

  before_action :gardens_bc

  def show
    @garden = GardenFacade.get_garden(params[:id])
    @plots = GardenFacade.get_garden_plots(@garden.id)
    add_breadcrumb(@garden.name)
  end

  def new
    @new_garden = NewGarden.new
    add_breadcrumb("New Garden")
  end

  def create
    params[:user_id] = current_user.id 
    @new_garden = NewGarden.new(garden_params)
    if @new_garden.save
      redirect_to garden_path(@new_garden.id)
    else
      add_breadcrumb("New Garden")
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

  def gardens_bc
    add_breadcrumb("My Gardens", dashboard_path)
  end

end
