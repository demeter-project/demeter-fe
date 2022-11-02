class SessionsController < ApplicationController
  def omniauth
    user = User.from_omniauth(request.env['omniauth.auth'])
    if user.valid?
      session[:user_id] = user.id 
      redirect_to users_path(user)
      flash[:success] = "Welcome #{user.username}!"
    else
      redirect_to landing_page_path
      flash[:error] = "Could Not Log In. Check Credentials"
    end
  end

  def logout
  end
end
