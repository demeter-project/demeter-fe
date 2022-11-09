class ApplicationController < ActionController::Base
  helper_method :current_user, :breadcrumbs

  def require_user
    if !current_user
      redirect_to landing_page_path
      flash[:error] = "Must be logged in to access this page"
    end
  end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def add_breadcrumb(name, path = nil)
    breadcrumbs << Crumb.new(name, path)
  end

  def breadcrumbs
    @breadcrumbs ||= []
  end
end
