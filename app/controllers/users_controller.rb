class UsersController < ApplicationController
  before_action :require_user, only: :show

  def show
    @user = current_user
    @gardens = GardenFacade.get_user_gardens(session[:user_id])
    add_breadcrumb("My Gardens")
  end
end
