class UsersController < ApplicationController
  before_action :require_user, only: :show
  
  def index
  end

  def show
  end
end
