class GardensController < ApplicationController
  def show
  end

  def new
  end

  def create
    #send request to create garden backend using garden_params
  end

  def destroy
    
    #send request to backend with garden id, delete associated plots
    redirect_to dashboard_path
  end

  private

  def garden_params
    params.permit(:name, :zipcode, state_code)
  end

end
