class SessionsController < ApplicationController
  def create # authing via omniauth gem
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id 
      redirect_to dashboard_path
      flash[:success] = "Welcome #{user.username}!"
    else
      redirect_to landing_page_path
      flash[:error] = "Could Not Log In. Check Credentials"
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to landing_page_path
  end
end
