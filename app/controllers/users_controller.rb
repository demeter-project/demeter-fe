class UsersController < ApplicationController
  before_action :require_user, only: :show

  def index
  end

  def show
    @user = current_user
    @gardens = GardenFacade.gardens_array(@user.id)
  end
end
