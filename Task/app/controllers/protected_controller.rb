class ProtectedController < ApplicationController
  before_action :require_login

  def require_login
    if !session[:user_id]
      flash[:message] = "You have not been logged in"
      redirect_to login_path
	end
  end
end
